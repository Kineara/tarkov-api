desc "Generate a list of attributes for the current classes in the attributes.json file"

task :generate_attributes do 
  Dir.chdir(Rails.root.join("lib").join("tasks")) { ruby "generate_attributes.rb"}

end