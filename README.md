# Endpoints

```js
'/v1212/items/'

// return list of all items in game
```

```js
'/v1212/items/#'

// return specific item with nested item-attributes
```

```js
'/v1212/traders/'

// return list of all traders in game
```

```js
'/v1212/traders/#'

// return specific trader with nested levels and quests
```

```js
'/v1212/traders/#/#'

// return specific trader level with nested inventory
```

```js
'/v1212/hideout-stations/'

// return all hideout stations
```

```js
'/v1212/hideout-stations/#'

// return specific hideout station with nested upgrade levels
```

```js
'/v1212/hideout-stations/#/#'

// return specific hideout station upgrade level with nested craftable items
```

```js
'/v1212/quests/'

// return list of all quests
```

```js
'/v1212/quests/#'

// return specific quest details
```

# Models / Relations
	
```ruby
# Model
# Individual trader and corresponding quests and loyalty levels
class Trader
	has_many :traderLevels
	has_many :quests
	has_and_belongs_to_many :stationUpgrades
end
```
	
```ruby
# Model
# Individual trader loyalty level and corresponding inventory and barters
class TraderLevel
	belongs_to :trader
	has_many :traderLevelItems
	has_many :items, through: :traderLevelItems
	has_many :barters
end
```
	
```ruby
# Model
# Individual item from a trader's inventory with price and reset availability
class TraderLevelItem
	belongs_to :traderLevel
	belongs_to :item
end
```
	
```ruby
# Model
# Individual barter recipe with required items and trader level
class Barter
	belongs_to :traderLevel
	has_and_belongs_to :items
end
```
	
```ruby
# Model
# Individual item with associated trader levels, quests, barters, station upgrades, and station levels
class Item
	has_many :traderLevelItems
	has_many :traderLevels, through: :traderLevelItems
	has_and_belongs_to_many :quests
	has_many :stationUpgrades
	has_many :stationLevels, through: :stationUpgrades
	has_and_belongs_to_many :barters
	has_many :craftingRecipes
end
```

```ruby
# Model
# Individual crafting recipe for an item
class craftingRecipe
	belongs_to :item
	belongs_to :stationLevel
	has_many :items
end
```
	
```ruby
# Model
# Individual quest with corresponding trader, required items, and reward info
class Quest
	belongs_to :trader
	has_and_belongs_to_many :items
end
```
	
```ruby
# Model
# Individual crafting station with associated upgrade levels
class HideoutStation
	has_many :stationLevels
end
```
	
```ruby
# Model
# Individual crafting station upgrade level with corresponding craftables
class StationLevel
	belongs_to :hideoutStation
	has_many :craftableItems
	has_many :items, through: :craftableItems
	has_one :stationLevelUpgrade
end
```
	
```ruby
# Model
class StationLevelUpgrade
	belongs_to :stationLevel
	has_and_belongs_to_many :traders
	has_and_belongs_to_many :items
end
```


# Attributes
```js
// Every item has an item-name, item-type, item-traders, item-quests, item-type-attributes (dependent on type)
// Items include all useable objects in the game
{
	item-name: 'water',
	item-type: 'food',
	description: 'a shiny thing',
	weight: 8,
	// has many traders, through :trader-inventories
	// has many quests, through :quest-items
	item-type-attributes: {[item-type-attributes]},
}
```

```js
// Embedded item attribute demo
{
	item-name: 'm856a1',
	item-type: 'ammunition',
	item-attributes: {
		caliber: '5.56x45mm',
		penetration: 60,
		fragmentation-chance: 'low',
		damage: 60,
	}
}
```

```js
// Item type attribute prototypes
{
	// ammunition
	caliber: '7.62x39mm',
	penetration: 60,
	damage: 50,
	fragmentation-chance: 'low',
}

{
	// food
	energy: 45,
	hydration: -20,
}

{
	// drinks
	energy: 15,
	hydration: 65,
}

{
	// meds
	effect: 'repair one limb',
	heal-amount: 60,
	hydration: -20,
	energy: 15,
}

{
	// weapons
	caliber: '9x39mm',
	type: 'assault rifle',
	fire-mode: 'single, auto, burst',
}

{
	// tactical rigs
	weight: 10,
	container-size: 12
}

{
	// armoured rigs
	armour-points: 85,
	level: 3,
	material: 'ceramic',
	protected-areas: 'thorax, stomach',
	container-size: 12,
}

{
	// armours
	armour-points: 50,
	level: 4,
	material: 'kevlar',
	protected-areas: 'thorax',
}

{
	// helmets
	armour-points: 20,
	level: 2,
	ricochet-chance: 'high',
}

{
	// headsets
	eq-bias: 'bass',
}

{
	// magazines
	caliber: '9x18mm',
	capacity: 16,
	failure-to-feed-chance: 'high',
}

{
	// optics
	magnification-level: '1x',
	modes: 1,
	reticle-color: 'red'
	sighting-range: 800,
	mount: 'picatinny',
	ergonomics: -10,
}

{
	// tactical devices
	laser: true,
	flashlight: true,
	infrared-laser: false,
	infrared-searchlight: false,
	ergonomics: 5,
}

{
	// backpacks
	container-size: 24,
}

{
	// attachments
	ergonomics: -5,
	accuracy: 12,
	recoil: -7,
	durability-burn: -2,
	heat-buildup: 25,
}

{
	// goggles
	flash-resistance: 50,
}

{
	// misc
	null
}
```

```js


## Items Structure

```ruby
class Handbook
	has_many :categories
end
```

```ruby
class Category
	has_many :subcategories
	belongs_to :handbook
end
```

```ruby
class SubCategory
	belongs_to :category
	has_many :subsubcategories
end
```

```ruby
class SubSubCategory
	belongs_to :subcategory
	has_many :gameItems
end
```

```ruby
class GameItem
	belongs_to :subcategory
end
```

// Hideout mockup
{
	// hideout-station
	hideout-station-name: 'workstation',
	level-ids: [station-level-foreign-keys],
}

{
	// station-level
	station-level: 1,
	items-required: [item-foreign-keys],
	craftable-items: [craftable-items-foreign-keys],
	upgrade-time: 1000,		// minutes
}
```

```js
// Trader mockup
{
	// trader
	name: 'mechanic',
	levels: [level-foreign-keys],
	quests: [quest-foreign-keys],
}

{
	// trader-level
	level: 1,
	rating-required: 0.0,
	sales-required: 0,
	sales-inventory: [trader-item-foreign-keys],
	barter-inventory: [trader-barter-foreign-keys],
}
```

```js
// Quest mockup
{
	// Quest
	quest-name: 'scrap metal',
	min-level: 24,
	trader: [trader-foreign-key],
	item-required: [item-foreign-keys],
	item-rewards: [item-foreign-keys],
}
```
