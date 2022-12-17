require 'json'

game_version = File.read(Rails.root.join('lib', 'game_version'))

def createItems(version)
  files = Dir["./lib/tasks/scraper/#{game_version}/data/*.json"]
  files.delete("./lib/tasks/scraper/#{game_version}/attributes.json")

  files.each do |file|
    json_array = JSON.parse(File.read(file))

    for hash in json_array do
      if file == './lib/tasks/scraper/data/weapons.json'
        new_item = version.weapons.new()
      elsif file == './lib/tasks/scraper/data/weapon_mods.json'
        new_item = version.weapon_mods.new()
      else
        puts 'Error!'
      end
      
      hash.each do |k,v|
        new_item[k.to_sym] = v 
      end

      new_item.save 
    end
    
  end
end

# Create Game Version
createItems(GameVersion.create(name: "12.12"))