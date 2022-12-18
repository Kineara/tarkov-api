desc 'Create associations between models'

task build_associations: :environment do
  weapon_errors = File.open(Rails.root.join('lib', 'tasks', 'build_associations', 'weapon_errors.log'), 'w')
  # Weapons
  Weapon.all.each do |weapon|
    def create_join_table(name, weapon_instance, mod_name)
      colors_regex = /\(ddc\)|\(banana\)|\(tan\)|\(.*green.*\)|\(fde\)|\(.*gr[ae]y.*\)|\(ral 8000\)|\(black\)|\(ghillie.*\)|\(anodized.*\)|\(white\)|\(olive.*\)/

      join = weapon_instance.weapon_mod_categories.new
      join[:name] = name

      test = if try(WeaponMod.find_by(name: mod_name)).nil?
             elsif try(WeaponMod.find_by(name: mod_name.gsub(colors_regex, '').strip)).nil?
             elsif try(WeaponMod.where('name ILIKE ?', "%#{mod_name.match(/\(.*\)/).string}%")[0]).nil?
             elsif try(WeaponMod.where('name ILIKE ?', "%#{mod_name.match(/\b[0-9][a-z][0-9][0-9]\b/).string}%")[0]).nil?
             else
               'aw fuck.'
             end
      puts test

      # if WeaponMod.find_by(name: mod_name)
      #   join.weapon_mod = WeaponMod.find_by(name: mod_name)
      #   join.save
      # elsif WeaponMod.find_by(name: mod_name.gsub(colors_regex, '').strip)[0]
      #   join.weapon_mod = WeaponMod.find_by(name: mod_name.gsub(colors_regex, '').strip)[0]
      #   join.save
      # elsif WeaponMod.where('name ILIKE ?', "%#{mod_name.match(/\(.*\)/).string}%")[0]
      #   join.weapon_mod = WeaponMod.try('name ILIKE ?', "%#{mod_name.match(/\(.*\)/).string}%")[0]
      #   join.save
      # elsif WeaponMod.where('name ILIKE ?',"%#{mod_name.match(/\b[0-9][a-z][0-9][0-9]\b/).string}%")[0]
      #   join.weapon_mod = WeaponMod.try('name ILIKE?',"%#{mod_name.match(/\b[0-9][a-z][0-9][0-9]\b/).string}%")[0]
      #   join.save
      # else
      #   puts "#{mod_name} not found in WeaponMods!"
      #   weapon_errors.write("Weapon: '#{weapon[:name]}' - Mod Category: '#{mod_category}' - Mod Name: '#{mod_name}'\n")
      #   join.delete
      # end
    end

    if weapon.mods_str
      weapon.mods_str.keys.each do |mod_category|
        weapon.mods_str[mod_category].each do |mod|
          create_join_table(mod_category, weapon, mod)
        end
      end
    else
      puts "No mods in db for #{weapon.name}."
    end
  end
  error_file.close
end
