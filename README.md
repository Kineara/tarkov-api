# Tarkov API

A RESTful Postgresql database for Escape from Tarkov

## Endpoints

```ruby
'/weapons'
# Return a list of all weapons

'/weapons/:id'
# Return a specific weapon by ID

'/weapon_mods'
# Return a list of all weapon mods

'/weapon_mods/:id'
# Return a specific weapon mod by ID
```

## Rake Tasks

```ruby
rake scraper
# Scrape the wiki for item info
## Returns lists of json data in lib/tasks/scraper/data/
## Generates a master list of attributes for each site scraped at lib/tasks/scraper/attributes.json
## Currently supports Weapons and Weapon Mods

rake generate_attributes
# Generate model attribute lists
## Returns a list of attributes for each model in lib/tasks/attribute_templates

```

## Updating the database

Run the following commands from the repository's root

```ruby
rake scraper

rake generate_attributes

# Create migrations as necessary to add/remove attributes from tables based on attribute lists

rails db:migrate

rails db:seed
  # or
rails db:reset
```

## Known Issues

- tarkov_spider.rb needs refactored for more readability and general support for other wiki pages
