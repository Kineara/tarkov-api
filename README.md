# Endpoints
	```/v/items/[item-type]```
	```/v/traders/[trader]```
	```/v/[hideout-station]```
	```/v/quests/[quest]```

# Relations
	- One trader has many items
	- One item has many traders
	
	- One quest has many items
	- One item has many quests
	
	- One item has many hideout-upgrades
	- One hideout-upgrade has many items
	
	- One hideout-station has many hideout-station-levels
	- One hideout-station-level has many craftable-items
	- One hideout-station-level has many items-required

# Joins

	items | trader-item | traders
		
		```
		// trader-item
		// has one item, has one trader
		{
			trader-id: [trader-foreign-key],
			item-id: [item-foreign-key],
			price: 20000,
			trader-level-required: 2,
			quests-required-to-unlock: [quest-foreign-keys],	// one trader-item has many quests-required-to-unlock
		}
		```
		
	items | quest-item | quests
		
		```
		// quest-item
		// has one item, has one quest
		{
			item-id: [item-foreign-key],
			quest-id: [quest-foreign-key],
		}
		```
		
	items | hideout-item | hideout-station-level


# Attributes

	item-types: [misc, ammunition, food, drinks, meds, weapons, armours, helmets, headsets, attachments, currency]
	
	```
	// Every item has an item-name, item-type, item-traders, item-quests, item-type-attributes (dependent on type)
	// Items include all useable objects in the game

	{
		item-name: water,
		item-type: food,
		// has many traders, through :trader-inventories
		// has many quests, through :quest-items
		item-type-attributes: {[item type attributes]}
		
	}
	```

	```
	// Embedded item attribute demo

		{
		item-name: m856a1,
		item-type: ammunition,
		item-attributes: {
			caliber: 5.56x45mm,
			penetration: 60,
			fragmentation-chance: low,
			damage: 60,
			}
		}
	```

	```
	// Hideout mockup
		// Hideout station
		{
		hideout-station-name: workstation,
		level-ids: [level-foreign-keys]
		}

		// Hideout level
		// one station level has many items-required, has many craftable-items through station-recipes

		{
		station-level: 1,
		items-required: ,
		craftable-items: ,
		}
	```
	
