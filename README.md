# Tarkov API

A RESTful Postgresql database for Escape from Tarkov

## Endpoints

```ruby
'/game_versions/'

# Return list of all game versions in the database
```

```ruby
'/game_versions/:id'

# Return specific game version with associated nested data
```

```ruby
'/game_versions/:id/weapons

# Return a list of all weapons
```

```ruby
`/game_versions/:id/weapon_mods

#Return a list of all weapon mods
```

## Rake Tasks

```ruby
rake set_game_version
# Prompts for game version, controls data location for scraper and generate_attributes tasks
## Saves the input in lib/tasks/game_version
## Creates lib/tasks/scraper/[game_version] and lib/tasks/scraper/[game_version]/data directories
## Prompts user if directories already exist to avoid unintentional data overwrites

rake scraper
# Scrape the wiki for item info
## Returns lists of json data in lib/tasks/scraper/[game_version]/data/
## Generates a master list of attributes for each site scraped at lib/tasks/scraper/[game_version]/attributes.json
## Currently supports Weapons and Weapon Mods

rake generate_attributes
# Generate model attribute lists
## Returns a list of attributes for each model in lib/tasks/attribute_templates

```

## Updating the database

Run the following commands from the repository's root

```ruby
rake set_game_version

rake scraper

rake generate_attributes

# Create migrations as necessary to add/remove attributes from tables based on attribute lists

rails db:migrate

rails db:seed
```

## Known Issues

- tarkov_spider.rb needs refactored for more readability and general support for other wiki pages
- tarkov_spider.rb doesn't yet automatically create the subdirectories for the game version
- tarkov_spider.rb and generate_attributes.rb rake tasks need the game_version variables set independently
