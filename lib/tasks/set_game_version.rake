desc 'Set current game version'

task :set_game_version do
  version_file = File.open('lib/tasks/game_version', 'w')
  puts 'Enter the game version:'
  game_version = STDIN.gets.chomp 

  if File.exist?("lib/tasks/scraper/#{game_version}") && File.exist?("lib/tasks/scraper/#{game_version}/data")
    puts "Directories for version #{game_version} already exist. Are you sure you want to use this version? [Y/n]"
    choice = STDIN.gets.chomp
    if choice.downcase == 'y'
      version_file.write("#{game_version}")
      puts "Version #{game_version} set! Directories already in place."
    elsif choice.downcase == 'n'
      puts 'Create new game version aborted.'
    else
      puts 'Enter y or n'
    end
  else
    version_file.write("#{game_version}")
    Dir.mkdir("lib/tasks/scraper/#{game_version}") unless File.exists?("lib/tasks/scraper/#{game_version}")
    Dir.mkdir("lib/tasks/scraper/#{game_version}/data") unless File.exists?("lib/tasks/scraper/#{game_version}/data")
    puts "Version #{game_version} set and directories created!"
  end
end
