desc "Create associations between models"

task :build_associations do 
  version = File.read(Rails.root.join('lib', 'tasks', 'game_version'))

  # Weapons 
  version_instance = GameVersion.find_by(name: version)
  weapons = version_instance.weapons.all 

  weapons.each do |weapon|
    puts weapon.name 
  end
end