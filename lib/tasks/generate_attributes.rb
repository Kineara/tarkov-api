require 'json'

attribs = JSON.parse(File.read('./scraper/attributes.json'))

json_list = ['mods_str', 'accepted_ammunition']

attribs.each do |category|
  output_file = File.open("./attribute_templates/#{category.keys[0]}", 'w')
  
  category.values[0].each do |value|
    if json_list.include?(value)
      output_file.write("t.json :#{value}\n")
    else
      output_file.write("t.string :#{value}\n")
    end
  end
end