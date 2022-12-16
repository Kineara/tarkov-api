require 'json'

def createItems(version)
  files = Dir['./lib/tasks/scraper/*.json']
  files.delete('./lib/tasks/scraper/attributes.json')
  files.delete('./lib/tasks/scraper/weapon_mods.json')

  files.each do |file|
    json = JSON.parse(File.read(file))

    # Create item
    case file
    when './lib/tasks/scraper/weapons.json'
      
      json.each do |item_hash|
        item = version.weapons.create()
        item_hash.each_key do |k,v|
           
          
        end
      end
    else
      puts 'oops'
    end
    
  end
end

# Create Game Version
createItems(GameVersion.create(name: "12.12"))