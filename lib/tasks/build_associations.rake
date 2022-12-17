desc 'Create associations between models'

task build_associations: :environment do
  # Weapons
  weapons = Weapon.all

  weapons.each do |weapon|
    if weapon.mods_str
      weapon.mods_str.keys.each do |mod_category|
        puts mod_category
      end
    else
      puts "No mods in db for #{weapon.name}"
    end
  end
end
