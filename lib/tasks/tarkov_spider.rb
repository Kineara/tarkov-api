require 'kimurai'

class TarkovSpider < Kimurai::Base
  @name = 'tarkov_spider'
  @engine = :mechanize
  @start_urls = ['https://escapefromtarkov.fandom.com/wiki/Weapons', 'https://escapefromtarkov.fandom.com/wiki/Weapon_mods']
  @config = {
    retry_request_errors: [{ error: RuntimeError, skip_on_failure: false }]
  }

  # Add any characters that need changed in attribute names for better clarity in the json output
  @@text_substitutions = {
    '%' => 'percent',
    ' ' => '_',
    ' ' => '_'
  }

  @@exclude_list = %w[mechanic prapor therapist peacekeeper ragman skier fence jaeger]

  def parse(response, url:, data: {})
    # Add item category based on start_url page title
    items_category = response.css('h1#firstHeading').text.strip.downcase.gsub(/\W/, @@text_substitutions)
    links = getLinks(response)
    scrapeLinks(links, items_category)
  end

  def getLinks(response)
    scraped_links = []
    response.css('table.wikitable').css('a').each do |link|
      next unless unique?(:scraped_links, link['href'])
      next if link['href'].include?('https')

      scraped_links << link['href']
    end
    scraped_links
  end

  def scrapeLinks(links, category)
    attribs = []

    links.each do |link|
      item_hash = {}

      browser.visit("https://escapefromtarkov.fandom.com#{link}")
      response = browser.current_response

      # Add name attribute from <h1> tag
      item_hash.store('name', response.css('h1#firstHeading').text.strip.downcase)
      next if @@exclude_list.include?(item_hash['name'])

      attribs << 'name'

      # Generate attributes from page info table
      response.css('table.va-infobox-group').css('tr').each do |table_row|
        # Skip table row if the va-infobox-label class isn't present on a child <td/> element
        next if table_row.css('td.va-infobox-label').length == 0

        # Assign attribute name, change 'type' attribute to avoid Rails conflicts
        parsed_name = table_row.css('td.va-infobox-label')[0].text.strip.downcase.gsub(/\W/, @@text_substitutions)
        attr_name = if parsed_name == 'type'
                      'item_type'
                    else
                      parsed_name
                    end

        # Check for list items in attribute value, and iterate through them to add to the attribute name as necessary
        if table_row.css('td.va-infobox-content').css('li').length > 0
          attr_entries = []
          table_row.css('td.va-infobox-content').css('li').each do |line|
            attr_entries << line.text.strip.downcase
          end
          attr_val = attr_entries
        else
          attr_val = table_row.css('td.va-infobox-content')[0].text.strip.downcase
        end

        item_hash.store(attr_name, attr_val) unless attr_name == ''
        attribs << attr_name unless attr_name == ''
      end

      # Check for mod categories
      if response.css('div.wds-tabs__wrapper').length == 1
        mods_str = {}

        # Get mod category name
        response.css('div.wds-tabs__wrapper').css('li').each_with_index do |tab, i|
          mod_category = tab.text.strip.downcase.gsub(/\W/, @@text_substitutions)

          # Get mod category items
          mod_names = []

          response.css('div.tabber.wds-tabber').css('div.wds-tab__content')[i].css('a').each do |mod_name|
            mod_names << mod_name.text.strip.downcase
          end

          mods_str.store(mod_category, mod_names)
        end

        item_hash.store('mods_str', mods_str)
        attribs << 'mods_str'
      end
      # Check that the item hash has more keys than just "name" before saving
      unless item_hash.keys.length < 2
        save_to "./scraper/data/#{category}.json", item_hash, format: :pretty_json,
                                                         position: false
      end
    end

    # Save categorized attributes to their own json file
    attribs_hash = {}
    attribs_hash.store("#{category}_attributes", attribs.uniq)
    save_to "./scraper/attributes.json", attribs_hash, format: :pretty_json, position: false
  end
end

TarkovSpider.crawl!
