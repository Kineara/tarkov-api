# Check for mods_str attribute on instance
# If not found, abort
# If found, search for the mod name in WeaponMods
## If not found, search by successive iterations on the name
## If still not found, abort and write error info 
# If found, create a join table

desc 'Create associations between models'

task build_associations: :environment do
  puts "On it. Grab some coffee and give me a sec."
  
  log_file = File.open(Rails.root.join('lib', 'tasks', 'build_associations', 'log.txt'), 'w')

  Weapon.all.each do |weapon|
    next unless weapon.mods_str 
    weapon.mods_str.keys.each do |category_name|
      category_instance = weapon.weapon_mod_categories.create(name: category_name)

      weapon.mods_str[category_name].each do |mod|
        search_string = mod 
        found_mod = WeaponMod.where('name ILIKE ?', mod)[0]

        while found_mod == nil && search_string.length > mod.length/2
          search_string = "%#{search_string.split(" ")[1..-2].join(" ").gsub('"plum"', "")}%"
          found_mod = WeaponMod.where('name ILIKE ?', search_string)[0]
        end

        if found_mod 
          category_instance.weapon_mod_category_mods.create(weapon_mod: found_mod) 

          log_file.write("Found mod! Weapon: #{weapon.name} | Category: #{category_name} | Mod Name: #{found_mod.name} | Searched using: #{search_string}\n")
        else  
          log_file.write("Mod #{mod} for #{weapon.name} not found! Searched using: #{search_string}\n")
        end
      end
    end

  end
  log_file.close 
end
