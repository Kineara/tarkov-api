desc "Scrape wiki for data"

task :scraper do 
  puts "Scraping data..."
  Dir.chdir(Rails.root.join("lib").join("tasks")) { ruby "tarkov_spider.rb"}
end
