# Game Version
v1212 = GameVersion.create(name: "12.12", current_version: true)
gameVersionTest = GameVersion.create(name: "12.testVersion, current_version: false")

# Create Handbook
handbook = v1212.create_handbook

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

# Create Hideout
hideout = v1212.create_hideout 

# Create Hideout Stations / Levels
hideoutAirFilteringUnit = hideout.hideout_stations.create(name: "Air Filtering Unit")
hideoutAirFilteringUnitLevel1 = hideoutAirFilteringUnit.hideout_station_levels.create(level: 1)

hideoutBitcoinFarm = hideout.hideout_stations.create(name: "Bitcoin Farm")
hideoutBitcoinFarmLevel1 = hideoutBitcoinFarm.hideout_station_levels.create(level: 1)
hideoutBitcoinFarmLevel2 = hideoutBitcoinFarm.hideout_station_levels.create(level: 2)
hideoutBitcoinFarmLevel3 = hideoutBitcoinFarm.hideout_station_levels.create(level: 3)

hideoutBoozeGenerator = hideout.hideout_stations.create(name: "Booze Generator")
hideoutBoozeGeneratorLevel1 = hideoutBoozeGenerator.hideout_station_levels.create(level: 1)

hideoutGenerator = hideout.hideout_stations.create(name: "Generator")
hideoutGeneratorLevel1 = hideoutGenerator.hideout_station_levels.create(level: 1)
hideoutGeneratorLevel2 = hideoutGenerator.hideout_station_levels.create(level: 2)
hideoutGeneratorLevel3 = hideoutGenerator.hideout_station_levels.create(level: 3)

hideoutHeating = hideout.hideout_stations.create(name: "Heating")
hideoutHeatingLevel1 = hideoutHeating.hideout_station_levels.create(level: 1)
hideoutHeatingLevel2 = hideoutHeating.hideout_station_levels.create(level: 2)
hideoutHeatingLevel3 = hideoutHeating.hideout_station_levels.create(level: 3)

hideoutIllumination = hideout.hideout_stations.create(name: "Illumination")
hideoutIlluminationLevel1 = hideoutIllumination.hideout_station_levels.create(level: 1)
hideoutIlluminationLevel2 = hideoutIllumination.hideout_station_levels.create(level: 2)
hideoutIlluminationLevel3 = hideoutIllumination.hideout_station_levels.create(level: 3)

hideoutIntelligenceCenter = hideout.hideout_stations.create(name: "Intelligence Center")
hideoutIntelligenceCenterLevel1 = hideoutIntelligenceCenter.hideout_station_levels.create(level: 1)
hideoutIntelligenceCenterLevel2 = hideoutIntelligenceCenter.hideout_station_levels.create(level: 2)
hideoutIntelligenceCenterLevel3 = hideoutIntelligenceCenter.hideout_station_levels.create(level: 3)

hideoutLavatory = hideout.hideout_stations.create(name: "Lavatory")
hideoutLavatoryLevel1 = hideoutLavatory.hideout_station_levels.create(level: 1)
hideoutLavatoryLevel2 = hideoutLavatory.hideout_station_levels.create(level: 2)
hideoutLavatoryLevel3 = hideoutLavatory.hideout_station_levels.create(level: 3)

hideoutLibrary = hideout.hideout_stations.create(name: "Library")
hideoutLibraryLevel1 = hideoutLibrary.hideout_station_levels.create(level: 1)

hideoutMedstation = hideout.hideout_stations.create(name: "Medstation")
hideoutMedstationLevel1 = hideoutMedstation.hideout_station_levels.create(level: 1)
hideoutMedstationLevel2 = hideoutMedstation.hideout_station_levels.create(level: 2)
hideoutMedstationLevel3 = hideoutMedstation.hideout_station_levels.create(level: 3)

hideoutNutritionUnit = hideout.hideout_stations.create(name: "Nutrition Unit")
hideoutNutritionUnitLevel1 = hideoutNutritionUnit.hideout_station_levels.create(level: 1)
hideoutNutritionUnitLevel2 = hideoutNutritionUnit.hideout_station_levels.create(level: 2)
hideoutNutritionUnitLevel3 = hideoutNutritionUnit.hideout_station_levels.create(level: 3)

hideoutRestSpace = hideout.hideout_stations.create(name: "Rest Space")
hideoutRestSpaceLevel1 = hideoutRestSpace.hideout_station_levels.create(level: 1)
hideoutRestSpaceLevel2 = hideoutRestSpace.hideout_station_levels.create(level: 2)
hideoutRestSpaceLevel3 = hideoutRestSpace.hideout_station_levels.create(level: 3)

hideoutScavCase = hideout.hideout_stations.create(name: "Scav Case")
hideoutScavCaseLevel1 = hideoutScavCase.hideout_station_levels.create(level: 1)

hideoutSecurity = hideout.hideout_stations.create(name: "Security")
hideoutSecurityLevel1 = hideoutSecurity.hideout_station_levels.create(level: 1)
hideoutSecurityLevel2 = hideoutSecurity.hideout_station_levels.create(level: 2)
hideoutSecurityLevel3 = hideoutSecurity.hideout_station_levels.create(level: 3)

hideoutShootingRange = hideout.hideout_stations.create(name: "Shooting Range")
hideoutShootingRangeLevel1 = hideoutShootingRange.hideout_station_levels.create(level: 1)

hideoutSolarPower = hideout.hideout_stations.create(name: "Solar Power")
hideoutSolarPowerLevel1 = hideoutSolarPower.hideout_station_levels.create(level: 1)

hideoutStash = hideout.hideout_stations.create(name: "Stash")
hideoutStashLevel1 = hideoutStash.hideout_station_levels.create(level: 1)
hideoutStashLevel2 = hideoutStash.hideout_station_levels.create(level: 2)
hideoutStashLevel3 = hideoutStash.hideout_station_levels.create(level: 3)
hideoutStashLevel4 = hideoutStash.hideout_station_levels.create(level: 4)

hideoutVents = hideout.hideout_stations.create(name: "Vents")
hideoutVentsLevel1 = hideoutVents.hideout_station_levels.create(level: 1)
hideoutVentsLevel2 = hideoutVents.hideout_station_levels.create(level: 2)
hideoutVentsLevel3 = hideoutVents.hideout_station_levels.create(level: 3)

hideoutWaterCollector = hideout.hideout_stations.create(name: "Water Collector")
hideoutWaterCollectorLevel1 = hideoutWaterCollector.hideout_station_levels.create(level: 1)
hideoutWaterCollectorLevel2 = hideoutWaterCollector.hideout_station_levels.create(level: 2)
hideoutWaterCollectorLevel3 = hideoutWaterCollector.hideout_station_levels.create(level: 3)

hideoutWorkbench = hideout.hideout_stations.create(name: "Workbench")
hideoutWorkbenchLevel1 = hideoutWorkbench.hideout_station_levels.create(level: 1)
hideoutWorkbenchLevel2 = hideoutWorkbench.hideout_station_levels.create(level: 2)
hideoutWorkbenchLevel3 = hideoutWorkbench.hideout_station_levels.create(level: 3)

hideoutChristmasTree = hideout.hideout_stations.create(name: "Christmas Tree")
hideoutChristmasTreeLevel1 = hideoutChristmasTree.hideout_station_levels.create(level: 1)


# Create Traders & Loyalty Levels 
fence = v1212.traders.create(title: "Fence", name: "Unknown")
fenceLevel1 = fence.trader_loyalty_levels.create(level: 1)
fenceLevel4 = fence.trader_loyalty_levels.create(level: 4)

jaeger = v1212.traders.create(title: "Jaeger", name: "Ivan Yegorovich Kharitonov")
jaegerLevel1 = jaeger.trader_loyalty_levels.create(level:1)
jaegerLevel2 = jaeger.trader_loyalty_levels.create(level:2)
jaegerLevel3 = jaeger.trader_loyalty_levels.create(level:3)
jaegerLevel4 = jaeger.trader_loyalty_levels.create(level:4)

mechanic = v1212.traders.create(title: "Mechanic", name: "Sergey Arsenyevich Samoylov")
mechanicLevel1 = mechanic.trader_loyalty_levels.create(level: 1)
mechanicLevel2 = mechanic.trader_loyalty_levels.create(level: 2)
mechanicLevel3 = mechanic.trader_loyalty_levels.create(level: 3)
mechanicLevel4 = mechanic.trader_loyalty_levels.create(level: 4)

peacekeeper = v1212.traders.create(title: "Peacekeeper", name: "Tadeusz Pilsudski")
peacekeeperLevel1 = peacekeeper.trader_loyalty_levels.create(level: 1)
peacekeeperLevel2 = peacekeeper.trader_loyalty_levels.create(level: 2)
peacekeeperLevel3 = peacekeeper.trader_loyalty_levels.create(level: 3)
peacekeeperLevel4 = peacekeeper.trader_loyalty_levels.create(level: 4)

prapor = v1212.traders.create(title: "Prapor", name: "Pavel Yegorovich Romanenko")
praporLevel1 = prapor.trader_loyalty_levels.create(level: 1)
praporLevel2 = prapor.trader_loyalty_levels.create(level: 2)
praporLevel3 = prapor.trader_loyalty_levels.create(level: 3)
praporLevel4 = prapor.trader_loyalty_levels.create(level: 4)

ragman = v1212.traders.create(title: "Ragman", name: "Arshavir Sarkisovich Abramyan")
ragmanLevel1 = ragman.trader_loyalty_levels.create(level: 1)
ragmanLevel2 = ragman.trader_loyalty_levels.create(level: 2)
ragmanLevel3 = ragman.trader_loyalty_levels.create(level: 3)
ragmanLevel4 = ragman.trader_loyalty_levels.create(level: 4)

skier = v1212.traders.create(title: "Skier", name: "Alexander Fyodorovich Kiselyov")
skierLevel1 = skier.trader_loyalty_levels.create(level: 1)
skierLevel2 = skier.trader_loyalty_levels.create(level: 2)
skierLevel3 = skier.trader_loyalty_levels.create(level: 3)
skierLevel4 = skier.trader_loyalty_levels.create(level: 4)

therapist = v1212.traders.create(title: "Therapist", name: "Elvira Khabibullina")
therapistLevel1 = therapist.trader_loyalty_levels.create(level: 1)
therapistLevel2 = therapist.trader_loyalty_levels.create(level: 2)
therapistLevel3 = therapist.trader_loyalty_levels.create(level: 3)
therapistLevel4 = therapist.trader_loyalty_levels.create(level: 4)



