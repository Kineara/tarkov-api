require 'json'

def create_seeds
  files = Dir['./lib/tasks/scraper/data/*.json']
  files.delete('./lib/tasks/scraper/attributes.json')
  links_config = { './lib/tasks/scraper/data/weapons.json' => Weapon,
                   './lib/tasks/scraper/data/weapon_mods.json' => WeaponMod }

  files.each do |file|
    json_array = JSON.parse(File.read(file))

    for hash in json_array do
      new_item = links_config[file].new
      hash.each do |k,v|
        new_item[k.to_sym] = v  
      end
      new_item.save 
    end
  end
end

create_seeds
