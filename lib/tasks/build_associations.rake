desc 'Create associations between models'

task build_associations: :environment do
  weapon_errors = File.open(Rails.root.join('lib', 'tasks', 'build_associations', 'weapon_errors.log'), 'w')

  # Weapons
  Weapon.all.each do |weapon|

    def find_mod(mod_names)
      found_mod = nil 
      mod_names.each do |mod_name|
        if mod_name != nil 
          found_mod = WeaponMod.where('name ILIKE ?', mod_name)
          next unless found_mod != nil 
          break 
        end
      end
      found_mod[0]
    end

    def create_join_table(category_name, weapon_instance, mod_name, error_file)
      colors_regex = /\(ddc\)|\(banana\)|\(tan\)|\(.*green.*\)|\(fde\)|\(.*gr[ae]y.*\)|\(ral 8000\)|\(black\)|\(ghillie.*\)|\(anodized.*\)|\(white\)|\(olive.*\)/
      
      join = weapon_instance.weapon_mod_categories.new
      join[:name] = category_name
      test_mod_names = [mod_name, mod_name.gsub(colors_regex, ''), mod_name.match(/\(.*\)/), mod_name.match(/\b[0-9][a-z][0-9][0-9]\b/)]

      mod = find_mod(test_mod_names)

      if mod.nil? 
          puts "#{mod_name} not found in WeaponMods!"
          error_file.write("Weapon: '#{weapon_instance[:name]}' - Mod Category: '#{category_name}' - Mod Name: '#{mod_name}'\n")
          join.delete
      else
        puts mod.class  
        join.weapon_mod = mod 
        join.save 
      end
    end

    if weapon.mods_str
      weapon.mods_str.keys.each do |mod_category|
        weapon.mods_str[mod_category].each do |mod|
          create_join_table(mod_category, weapon, mod, weapon_errors)
        end
      end
    else
      puts "No mods in db for #{weapon.name}."
    end
  end
  weapon_errors.close
end
