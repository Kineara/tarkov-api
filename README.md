# Endpoints

```http
/v1212/items/

// return list of all items in game
```

```http
/v1212/items/#

// return specific item with nested item-attributes
```

```http
/v1212/traders/

// return list of all traders in game
```

```http
/v1212/traders/#

// return specific trader with nested levels and quests
```

```http
/v1212/traders/#/#

// return specific trader level with nested inventory
```

```http
/v1212/hideout-stations/

// return all hideout stations
```

```http
/v1212/hideout-stations/#

// return specific hideout station with nested upgrade levels
```

```http
/v1212/hideout-stations/#/#

// return specific hideout station upgrade level with nested craftable items
```

```http
/v1212/quests/

// return list of all quests
```

```http
/v1212/quests/#

// return specific quest details
```

# Relations
- One trader has many trader-levels
- One trader-level has many items
- One item has many trader-levels
	
- One quest has many items
- One item has many quests
	
- One item has many hideout-upgrades
- One hideout-upgrade has many items
	
- One hideout-station has many hideout-station-levels
- One hideout-station-level has many craftable-items
- One hideout-station-level has many items-required

- One trader-level has many barters, through trader-barter
- One item has many barters, through trader-barter



# Joins

```js
// items | trader-item | trader-level

// trader-item
// has one item, has one trader-level
{
	trader-level-id: [trader-foreign-key],
		item-id: [item-foreign-key],
		price: 20000,
		quests-required-to-unlock: [quest-foreign-key],
		trades-per-reset: 3,
}
```

```js
//items | quest-item | quests
		
// quest-item
// has one item, has one quest
{
	item-id: [item-foreign-key],
	quest-id: [quest-foreign-key],
}
```

```js
// items | craftable-item | station-level

// craftable-item
// has one item, has one station-level
{
	item-id: [item-foreign-key],
	ingredients: [item-foreign-keys],
}
```

```js
// items | trader-barter | trader-level

// trader-barter
// has one item, has one trader-level
{
	input-items: [item-foreign-keys],
	output-items: [item-foreign-keys],
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
	heat: 25
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
	upgrade-time: 1000		// minutes
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
