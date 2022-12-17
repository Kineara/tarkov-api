require 'json'

desc 'Generate a list of attributes for the current classes in the attributes.json file'

task :generate_attributes do
  # Dir.chdir(Rails.root.join("lib").join("tasks")) { ruby "generate_attributes.rb"}
  attribs = JSON.parse(File.read('lib/tasks/scraper/attributes.json'))

  json_list = %w[mods_str accepted_ammunition]

  attribs.each do |category|
    output_file = File.open("lib/tasks/attribute_templates/#{category.keys[0]}", 'w')

    category.values[0].each do |value|
      if json_list.include?(value)
        output_file.write("t.json :#{value}\n")
      else
        output_file.write("t.string :#{value}\n")
      end
    end
  end
end
