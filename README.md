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

# Relations
- One trader has many trader-levels
- One trader-level belongs_to trader

- One trader-level has many items, through trader-level-items
- One item has many trader-levels, through trader-level-items
	
- One quest has and belongs to many items
- One item has and belongs to many quests

- One hideout-station has many station-levels
- One station-level belongs to hideout-station
	
- One item has many station-levels, through station-upgrades
- One station-level has many items, through station-upgrades
	
- One hideout-station has many station-levels
- One station-level belongs to hideout-station

- One hideout-station-level has many craftable-items
- One hideout-station-level has many items-required

- One trader-level has many barters, through trader-barters
- One item has many barters, through trader-barters



# Joins

```js
// items | trader-level-items | trader-level

// trader-level-items
// belongs to item, belongs to trader-level
{
	trader-level-id: [trader-foreign-key],
		item-id: [item-foreign-key],
		price: 20000,
		currency: 'rouble',
		quests-required-to-unlock: [quest-foreign-key],
		trades-per-reset: 3,
}
```

```js
// items | craftable-items | station-level

// craftable-items
// belongs to item, belongs to station-level, has and belongs to many items
{
	item-id: [item-foreign-key],
	input-item-ids: [item-foreign-keys],
	output-item-id: [item-foreign-key],
}
```

```js
// item | station-upgrades | station-level

// station-upgrades
// belongs to item, has and belongs to many items, belongs to station-level
{
	item-id: [item-foreign-key],
	station-level-id: [station-level-foreign-key],
	input-item-ids: [item-foreign-keys],
}
```

```js
// item | trader-barters | trader-level

// trader-barter
// belongs to item, has and belongs to many items, belongs to trader-level
{
	trader-level-id: [trader-level-foreign-key],
	input-item-ids: [item-foreign-keys],
	output-item: [item-foreign-key],
	trades-per-reset: 4,
}
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
	effect: 'does something',
}

{
	// drinks
	effect: 'does a thing',
}

{
	// meds
	effect: 'repair one limb',
	heal-amount: 60,
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
