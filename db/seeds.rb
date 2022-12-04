# Game Version
gameVersion = GameVersion.create(name: "12.12", current_version: true)

# Create Handbook
handbook = gameVersion.create_handbook

# Create Categories
barterItems = handbook.categories.create(name: "Barter Items")
barterItemsOthers = barterItems.sub_categories.create(name: "Others")
barterItemsBuildingMaterials = barterItems.sub_categories.create(name: "Building Materials")
barterItemsElectronics = barterItems.sub_categories.create(name: "Electronics")
barterItemsEnergyElements = barterItems.sub_categories.create(name: "Energy Elements")
barterItemsFlammableMaterials = barterItems.sub_categories.create(name: "Flammable Materials")
barterItemsHouseholdMaterials = barterItems.sub_categories.create(name: "Household Materials")
barterItemsMedicalSupplies = barterItems.sub_categories.create(name: "Medical Supplies")
barterItemsTools = barterItems.sub_categories.create(name: "Tools")
barterItemsValuables = barterItems.sub_categories.create(name: "Valuables")

gear = handbook.categories.create(name: "Gear")
gearBackpacks = gear.sub_categories.create(name: "Backpacks")
gearBodyArmor = gear.sub_categories.create(name: "Body Armor")
gearEyewear = gear.sub_categories.create(name: "Eyewear")
gearFacecovers = gear.sub_categories.create(name: "Facecovers")
gearComponents = gear.sub_categories.create(name: "Gear Components")
gearHeadgear = gear.sub_categories.create(name: "Headgear")
gearHeadsets = gear.sub_categories.create(name: "Headsets")
gearSecureContainers = gear.sub_categories.create(name: "Secure Containers")
gearStorageContainers = gear.sub_categories.create(name: "Storage Containers")
gearTacticalRigs = gear.sub_categories.create(name: "Tactical Rigs")

wParts = handbook.categories.create(name: "Weapon Parts & Mods")
wPartsFunctionalMods = wParts.sub_categories.create(name: "Functional Mods")
wPartsFunctionalModsAuxiliaryParts = wPartsFunctionalMods.sub_x2_categories.create(name: "Auxiliary Parts")
wPartsFunctionalModsBipods = wPartsFunctionalMods.sub_x2_categories.create(name: "Bipods")
wPartsFunctionalModsForegrips = wPartsFunctionalMods.sub_x2_categories.create(name: "Foregrips")
wPartsFunctionalModsLights = wPartsFunctionalMods.sub_x2_categories.create(name: "Light & Laser Devices")
wPartsFunctionalModsLightsFlashlights = wPartsFunctionalModsLights.sub_x3_categories.create(name: "Flashlights")
wPartsFunctionalModsLightsLasers = wPartsFunctionalModsLights.sub_x3_categories.create(name: "Laser Target Pointers")
wPartsFunctionalModsLightsTacticals = wPartsFunctionalModsLights.sub_x3_categories.create(name: "Tactical Combo Devices")

wPartsFunctionalModsMuzzles = wPartsFunctionalMods.sub_x2_categories.create(name: "Muzzle Devices")
wPartsFunctionalModsMuzzlesBrakes = wPartsFunctionalModsMuzzles.sub_x3_categories.create(name: "Flashhiders & Brakes")
wPartsFunctionalModsMuzzlesAdapters = wPartsFunctionalModsMuzzles.sub_x3_categories.create(name: "Muzzle Adapters")
wPartsFunctionalModsMuzzlesSuppressors = wPartsFunctionalModsMuzzles.sub_x3_categories.create(name: "Suppressors")

wPartsFunctionalModsSights = wPartsFunctionalMods.sub_x2_categories.create(name: "Sights")
wPartsFunctionalModsSightsAssaultScopes = wPartsFunctionalModsSights.sub_x3_categories.create(name: "Assault Scopes")
wPartsFunctionalModsSightsCollimators = wPartsFunctionalModsSights.sub_x3_categories.create(name: "Collimators")
wPartsFunctionalModsSightsCompactCollimators = wPartsFunctionalModsSights.sub_x3_categories.create(name: "Compact Collimators")
wPartsFunctionalModsSightsIron = wPartsFunctionalModsSights.sub_x3_categories.create(name: "Iron Sights")
wPartsFunctionalModsSightsOptics = wPartsFunctionalModsSights.sub_x3_categories.create(name: "Optics")
wPartsFunctionalModsSightsSpecial = wPartsFunctionalModsSights.sub_x3_categories.create(name: "SpecialPurposeSights")

wPartsGearMods = wParts.sub_categories.create(name: "Gear Mods")
wPartsGearModsChargingHandles = wPartsGearMods.sub_x2_categories.create(name: "Charging Handles")
wPartsGearModsMagazines = wPartsGearMods.sub_x2_categories.create(name: "Magazines")
wPartsGearModsMounts = wPartsGearMods.sub_x2_categories.create(name: "Mounts")
wPartsGearModsStocks = wPartsGearMods.sub_x2_categories.create(name: "Stocks & Chassis")

wPartsVitalParts = wParts.sub_categories.create(name: "Vital Parts")
wPartsVitalPartsBarrels = wPartsVitalParts.sub_x2_categories.create(name: "Barrels")
wPartsVitalPartsBlocks = wPartsVitalParts.sub_x2_categories.create(name: "Gas Blocks")
wPartsVitalPartsHandguards = wPartsVitalParts.sub_x2_categories.create(name: "Handguards")
wPartsVitalPartsGrips = wPartsVitalParts.sub_x2_categories.create(name: "Pistol Grips")
wPartsVitalPartsReceivers = wPartsVitalParts.sub_x2_categories.create(name: "Receivers & Slides")

weapons = handbook.categories.create(name: "Weapons")
weaponsAssaultCarbines = weapons.sub_categories.create(name: "Assault Carbines")
weaponsAssaultRifles = weapons.sub_categories.create(name: "Assault Rifles")
weaponsBoltActionRifles = weapons.sub_categories.create(name: "Bolt-action Rifles")
weaponsMachineGuns = weapons.sub_categories.create(name: "Machine Guns")
weaponsMarksmanRifles = weapons.sub_categories.create(name: "Marksman Rifles")
weaponsMeleeWeapons = weapons.sub_categories.create(name: "Melee Weapons")
weaponsPistols = weapons.sub_categories.create(name: "Pistols")
weaponsSMGs = weapons.sub_categories.create(name: "SMGs")
weaponsShotguns = weapons.sub_categories.create(name: "Shotguns")
weaponsSpecialWeapons = weapons.sub_categories.create(name: "Special Weapons")
weaponsThrowables = weapons.sub_categories.create(name: "Throwables")

ammo = handbook.categories.create(name: "Ammo")
ammoPacks = ammo.sub_categories.create(name: "Ammo Packs")
ammoRounds = ammo.sub_categories.create(name: "Rounds")

provisions = handbook.categories.create(name: "Provisions")
provisionsDrinks = provisions.sub_categories.create(name: "Drinks")
provisionsDrinks = provisions.sub_categories.create(name: "Food")

medication = handbook.categories.create(name: "Medication")
medicationInjectors = medication.sub_categories.create(name: "Injectors")
medicationInjuryTreatment = medication.sub_categories.create(name: "Injury Treatment")
medicationMedkits = medication.sub_categories.create(name: "Medkits")
medicationPills = medication.sub_categories.create(name: "Pills")

keys = handbook.categories.create(name: "Keys")
keysElectronic = keys.sub_categories.create(name: "Electronic Keys")
keysMechanical = keys.sub_categories.create(name: "Mechanical Keys")

infoItems = handbook.categories.create(name: "Info Items")

specialEquipment = handbook.categories.create(name: "Special Equipment")

maps = handbook.categories.create(name: "Maps")

money = handbook.categories.create(name: "Money")

questItems = handbook.categories.create(name: "Quest Items")

# Create Items
## Barter Items
### Others
### Building Materials
### Electronics
### Energy Elements
### Flammable Materials
### Household Materials
### Medical Supplies
### Tools
### Valuables

## Gear
### Backpacks
### Body Armor
### Eyewear
### Facecovers
### Gear Components
### Headgear
### Headsets
### Secure Containers
### Storage Containers
### Tactical Rigs

## Weapon Parts & Mods
### Functional Mods
#### Auxiliary Parts
#### Bipods
#### Foregrips
#### Light & Laser Devices
##### Flashlights
##### Laser Target Designators
##### Tactical Combo Devices
#### Muzzle Devices
##### Flashhiders
##### Muzzle Adapters
##### Suppressors
#### Sights
##### Assault Scopes
##### Collimators
##### Compact Collimators
##### Iron Sights
##### Optics
##### Special Purpose Sights
### Gear Mods
#### Charging Handles
#### Magazines
#### Mounts
#### Stocks & Chassis
### Vital Parts
#### Barrels
#### Gas Blocks
#### Handguards
#### Pistol Grips
#### Receivers & Slides

## Weapons
### Assault Carbines
### Assault Rifles
### Bolt-action Rifles
### Machine Guns
### Marksman Rifles
### Melee Weapons
### Pistols
### SMGs
### Shotguns
### Special Weapons
### Throwables

## Ammo
### Ammo Packs
### Rounds

## Provisions
### Drinks
### Food

## Medication
### Injectors
### Injury Treatment
### Medkits
### Pills
medicationPillsAnalgin = medicationPills.items.create(name: "Analgin", use_time_seconds: 3, uses: 4, removes_pain?: true, removes_pain_duration_seconds: 95 )

## Keys
### Electronic Keys
### Mechanical Keys

## Info Items
infoItemsFactoryMap = infoItems.items.create(name: "Factory Plan Map", weight_kg: 0.1, grid_size: "2x1" )

## Special Equipment

## Maps

## Money

## Quest Items
