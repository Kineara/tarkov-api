desc 'Create associations between models'

task build_associations: :environment do
  # Weapons
  error_file = File.open(Rails.root.join('lib', 'tasks', 'build_associations', 'weapon_errors.log'), 'w')

  Weapon.all.each do |weapon|
    if weapon.mods_str
      weapon.mods_str.keys.each do |mod_category|
        weapon.mods_str[mod_category].each do |mod|
          if WeaponMod.find_by(name: mod)
            weapon.weapon_mod_categories.create(name: mod_category, weapon_mod_id: WeaponMod.find_by(name: mod).id)
          else
            puts "#{mod} not found in WeaponMods!"
            error_file.write("Weapon: '#{weapon[:name]}' - Mod Category: '#{mod_category}' - Mod Name: '#{mod}'\n")
          end
        end
      end
    else
      puts "No mods in db for #{weapon.name}"
    end
  end
  error_file.close 
end
