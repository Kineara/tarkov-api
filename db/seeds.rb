require 'json'

game_version = File.read(Rails.root.join('lib', 'tasks', 'game_version'))
version_instance = GameVersion.create(name: game_version)

def create_seeds(game_version, version_instance)
  

  files = Dir["./lib/tasks/scraper/#{game_version}/data/*.json"]
  files.delete("./lib/tasks/scraper/#{game_version}/attributes.json")

  files.each do |file|
    json_array = JSON.parse(File.read(file))

    for hash in json_array do
      if file == "./lib/tasks/scraper/#{game_version}/data/weapons.json"
        new_item = version_instance.weapons.new
        hash.each do |k, v|
          new_item[k.to_sym] = v
        end
        new_item.save
      elsif file == "./lib/tasks/scraper/#{game_version}/data/weapon_mods.json"
        new_item = version_instance.weapon_mods.new
        hash.each do |k, v|
          new_item[k.to_sym] = v
        end
        new_item.save
      else
        puts "Error! Config for #{file} not found in db/seeds.rb."
      end
    end
  end
end

create_seeds(game_version, version_instance)