game_version_config_file = File.open(Dir(Rails.root.join('lib', 'game_version'), 'w'))

game_version = STDIN.gets.chomp 

game_version_config_file.write(game_version)

Dir.mkdir  "#{Rails.root.to_s}/lib/tasks/scraper/#{game_version}"