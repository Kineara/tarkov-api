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
  # Scrape the wiki for item info
  ## Returns lists of json data in lib/tasks/scraper/data/
  ## Generates a master list of attributes for each site scraped at lib/tasks/scraper/attributes.json
  rake scraper

  # Generate model attribute lists
  ## Returns a list of attributes for each model in lib/tasks/attribute_templates
  rake generate_attributes
```

## Updating the database

Run the following commands from the repository's root

```ruby
# Scrape data
rake scraper

# Generate attributes
rake generate_attributes

# Create migrations as necessary to add/remove attributes from tables based on attribute lists

# Migrate the database
rails db:migrate

# Seed the database with the scraped info
rails db:seed
```
