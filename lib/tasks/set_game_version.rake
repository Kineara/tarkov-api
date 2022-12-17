desc "Set current game version"

task :set_game_version do 
  Dir.chdir(Rails.root.join("lib").join("tasks")) { ruby "set_game_version.rb"}
end
