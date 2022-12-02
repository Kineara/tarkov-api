# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Game Version
testGameVersion = GameVersion.create(name: "testing")

# Create Handbook
testHandbook = testGameVersion.create_handbook

# Create Categories
4.times do |i|
  testHandbook.categories.create(name: "TestCategory ##{i}")
end

# Create SubCategories
testHandbook.categories.each do |i|
  4.times do |x|
    i.sub_categories.create(name: "TestSubCategory ##{x}")
  end
  i.sub_categories.each do |y|
    4.times do |z|
      y.sub_sub_categories.create(name: "TestSubSubCategory ##{z}")
    end
    y.sub_sub_categories.each do |a|
      4.times do |b|
        a.game_items.create(name: "TestGameItem ##{b}", weight: 1)
      end
    end
  end
end



