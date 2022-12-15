require 'json'

attribs = JSON.parse(File.read('./scraper/attributes.json'))

attribs.each do |category|
  output_file = File.open("./attribute_templates/#{category.keys[0]}", 'w')
  
  category.values[0].each do |value|
    output_file.write("t.string :#{value}\n")
  end
end