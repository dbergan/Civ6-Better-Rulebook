-- ('', '', 'en_US'),

INSERT OR REPLACE INTO LocalizedText 
(Tag, Text, Language) VALUES

-- 
('LOC_COMBAT_PREVIEW_LESS_EFFECTIVE_VS_WALLS_DESC', '-{1_Value} Less effective vs cities and encampments [BR]', 'en_US'),

-- Zone of Control details in Civilopedia
('LOC_PEDIA_CONCEPTS_PAGE_MOVEMENT_3_CHAPTER_CONTENT_PARA_1', '***Better Rulebook***[NEWLINE][NEWLINE]Many units exert a "Zone of Control" (ZOC) influence over the tiles around them. Combat units that enter an enemy''s ZOC must stop, regardless of any remaining [ICON_Movement] Movement. Units that have been stopped by an enemy''s ZOC have the option to attack, but only when they have the required [ICON_Movement] Movement to do so.[NEWLINE][NEWLINE]Further details about Zones of Control:[NEWLINE][ICON_Bullet]A zone of control is only in place for civilizations at war with each other (enemies)[NEWLINE][ICON_Bullet]A zone of control affects the six tiles immediately adjacent to a unit and also the tile the unit is in.[NEWLINE][ICON_Bullet]Some units and buildings exert a ZOC one tile around them. This ZOC is only in place with civilizations they are at war with. These units are:[NEWLINE][ICON_Bullet][ICON_Bullet] Melee class units[NEWLINE][ICON_Bullet][ICON_Bullet] Anti-cavalry[NEWLINE][ICON_Bullet][ICON_Bullet] Non-ranged Light Cavalry[NEWLINE][ICON_Bullet][ICON_Bullet] Non-ranged Heavy Cavalry[NEWLINE][ICON_Bullet][ICON_Bullet] Ranged units with a ZOC promotion[NEWLINE][ICON_Bullet][ICON_Bullet] Immortals Unique Unit[NEWLINE][ICON_Bullet][ICON_Bullet] All Naval military units[NEWLINE][ICON_Bullet][ICON_Bullet] Cities and encampments[NEWLINE][ICON_Bullet]A unit entering an enemy zone of control cannot move an additional tile that turn until after they attack an adjacent enemy unit or city. The unit may also perform other actions like promotion and looting while they have the movement points to do so but some other actions like settling a new city or improving land with a builder cannot be performed.[NEWLINE][ICON_Bullet]There is no movement point cost to attack a unit beyond the cost of moving into the enemy tile but normally an attack ends the movement phase. Units that have a promotion that allows them to move after combat (promotions of heavy cavalry, naval raider, recon and melee troop types) can move additional tiles after combat if they have sufficient movement points to do so. This ability is stronger than it may seem here, especially for ranged units.[NEWLINE][ICON_Bullet]A unit that has not yet moved this turn or has attacked an adjacent enemy unit can leave an enemy zone of control without penalty unless that unit is moving into another enemy zone of control in which case it faces the normal penalties and restriction for moving into a zone of control.[NEWLINE][ICON_Bullet]Some units ignore zones of control. These are:[NEWLINE][ICON_Bullet][ICON_Bullet] All heavy and light cavalry[NEWLINE][ICON_Bullet][ICON_Bullet] Naval Raider class units[NEWLINE][ICON_Bullet][ICON_Bullet] All air units (balloons and helicopters are not deemed an air units)[NEWLINE][ICON_Bullet][ICON_Bullet] Units connected to light cavalry with the Escort Mobility promotion[NEWLINE][ICON_Bullet] All non-military units are affected by ZOC including great generals.[NEWLINE][ICON_Bullet]Land units do not exert a zone of control on water tiles whether embarked or disembarked. An exception is the central ZOC is in place for embarked units, allowing them to siege a water city.[NEWLINE][ICON_Bullet]An embarked land unit exerts a ZOC on its own tile at sea.[NEWLINE][ICON_Bullet]Naval Units do not exert a zone of control on land tiles[NEWLINE][ICON_Bullet]Rivers prevent a zone of control extending to the other side of a river tile border.[NEWLINE][ICON_Bullet]A zone of control does extend into an enemy city.[NEWLINE][ICON_Bullet]Cities are deemed under siege when all their surrounding tiles are in an enemy zone of control regardless of the presence of any friendly unit in the tile.[NEWLINE][ICON_Bullet]The zone of control ceases to exist the moment the unit or building is no longer enemy controlled or a peace treaty is agreed.[NEWLINE][ICON_Bullet]A support unit attached to a unit that ignores ZOC, also ignores the ZOC.[NEWLINE][ICON_Bullet]A battering RAM attached to a light cavalry unit with the right promotion also ignores the ZOC.[NEWLINE][ICON_Bullet]A deployed air unit will not allow enemies to pass directly under it, but it does not apply a Zone of Control[NEWLINE][ICON_Bullet]Religious units exert a ZOC against all religious units of [different religions?] OR [other players?].[NEWLINE][ICON_Bullet]Cities and encampments exert a ZOC against enemy religious units (must be at war, not just a different religion).[NEWLINE][ICON_Bullet]Apostles do not show the red ZOC marks next to enemy encampments, but the ZOC will be exerted against them.[NEWLINE][NEWLINE]***Original Text***[NEWLINE][NEWLINE]Many combat units exert a "Zone of Control" (ZOC) influence over the tiles around them. Combat units that enter an enemy''s ZOC must stop, regardless of any remaining [ICON_Movement] Movement. Units that have been stopped by an enemy''s ZOC have the option to attack if they have the required [ICON_Movement] Movement to do so.[NEWLINE][NEWLINE]Ranged and Bombard class units do not exert ZOC. Cavalry units, as well as Naval Raider class units have the ability to ignore an enemy''s ZOC.[NEWLINE][NEWLINE]Religious units exert ZOC against other religious units.', 'en_US'),

-- Embark details in Civilopedia
('LOC_PEDIA_CONCEPTS_PAGE_MOVEMENT_5_CHAPTER_CONTENT_PARA_1', '***Better Rulebook***[NEWLINE][NEWLINE]"Embark" means to go onto a boat, literally coming from Latin, "on the wood". (Which is similar to our word "onboard".)  At the start of the game, your land units cannot enter any water tiles. However, once you''ve learned the Sailing technology, Builders will be able to move into coastal water tiles. After Celestial Navigation, Traders will be able to embark; and after Shipbuilding, all units will be able to embark.[NEWLINE][NEWLINE]To embark you simply move the unit from a shore tile to an adjacent coastal tile... unless there is a cliff between the two. Embarking is like moving onto a tile with a movement cost of 3... it takes 3 movement points or all your movement points (if the unit has fewer than 3). However, moving from a coastal city to the water, or onto a Harbor tile, only costs 1. Once the unit is embarked, it instantly changes its total movement capacity (the denominator on the unit''s card) to reflect the embarked movement. Early in the game this starts at 3, and so embarking can consume all of the unit''s movement even if it had 4 or more movement points on the shore tile. For example, with just the Shipbuilding technology a Horseman on the shore could show 4/4 movement and then that''s reduced to 0/3 on the water. This means that its 4 movement points were first converted to 3 (its max embarked movement capacity) before subtracting the 3 for making the move.[NEWLINE][NEWLINE]As the game goes on, technology and wonders can increase the movement capacity for embarked units, and then our 4/4 Horseman would be 1/4 or 1/5 after moving to the water. Movement promotions usually also increase embarked movement (e.g. "Commando" for Melee, "Pursuit" for Light Cavalry, "Redeploy" for Anti-Cavalry, "Dancing Crane" for Warrior Monks). And some units have promotions that allow them to "ignore" the embarking movement cost (e.g. "Amphibious" for Melee units) which in truth just reduces the cost to 1 movement point instead of 3 to move from shore to water.[NEWLINE][NEWLINE]Disembarking (coming ashore) has a similar set of rules... where your unit''s movement capacity on land is instantly applied as soon as you come ashore (which may result in losing movement points like the Horseman example earlier). The movement cost for disembarking depends on the tile''s inherent movement cost. Coming ashore on hills or marsh will take 2 movement vs 1 on a flat desert or grassland tile. And to the tile''s normal movement cost, you need to add 2 more movement points. However, if the water tile the unit is on is within somebody''s borders, there isn''t an additional cost, it''s just like moving onto that tile as if you were on land. What matters here is the water tile the unit is coming from, **not** the land tile.[NEWLINE][NEWLINE]Embarked land units are considered to be in a transport ship, and do not have the same combat abilities as they do on land. They have reduced combat strength and (like naval units) can only heal in friendly waters.[NEWLINE][NEWLINE]***Original Text***[NEWLINE][NEWLINE]At the start of the game, your land units cannot enter any water tiles. However, once you''ve learned the Sailing technology, Builders will be able to move into coastal water tiles. After Celestial Navigation, Traders will be able to embark. And after Shipbuilding, all units will be able to embark. To embark a unit, move the unit to a coastal tile and then click on the "Move To" Action. Once embarked, the unit must move into water.[NEWLINE]Land units that embark are considered to be in a transport ship, and do not have the same combat abilities as they do on land. Embarked land units also suffer a reduced combat strength, and can only heal in friendly waters, making them much more vulnerable to attack from enemy naval units.', 'en_US'),

-- Air combat details in Civilopedia
('LOC_PEDIA_CONCEPTS_PAGE_AIRCOMBAT_1_CHAPTER_CONTENT_TITLE', 'Introduction', 'en_US'),
('LOC_PEDIA_CONCEPTS_PAGE_AIRCOMBAT_1_CHAPTER_CONTENT_PARA_1', '***Better Rulebook***[NEWLINE][NEWLINE]Once a civilization has researched Flight, it may build a new district called the Aerodrome, which allows it to build combat aircraft units. Combat aircraft come in two classes: Fighters and Bombers. Fighters specialize in attacking and defending enemy aircraft, while Bombers can attack units, bombard cities, and pillage tiles from afar.[NEWLINE][NEWLINE]***Original Text***[NEWLINE][NEWLINE]There are four main types of air units: support reconnaissance, support defense, fighters, and strategic bombers. These can be produced in any city that has built an Aerodrome and researched the prerequisite technologies.', 'en_US'),
('LOC_PEDIA_CONCEPTS_PAGE_AIRCOMBAT_2_CHAPTER_CONTENT_TITLE', 'Air Bases', 'en_US'),
('LOC_PEDIA_CONCEPTS_PAGE_AIRCOMBAT_2_CHAPTER_CONTENT_PARA_1', '***Better Rulebook***[NEWLINE][NEWLINE]Air units do not move around the map like ground and naval units, but instead operate from an air base. Air bases include: Aerodromes (a district), Airstrips (an improvement built by Military Engineers), Aircraft Carriers (a naval unit) and City Centers. Each base has a maximum number of aircraft units, for example, a City Center can hold only 1 while an Airstrip can hold 3. If an air base is destroyed or pillaged, its aircraft will be automatically re-based [in or near your capital?].[NEWLINE][NEWLINE]From its air base, your combat aircraft has the following options:[NEWLINE][NEWLINE][ICON_Bullet]Attack a Priority Target within your aircraft''s attack range (attacking a support unit like a Supply Convoy or Drone that shares the same tile as a combat unit)[NEWLINE][NEWLINE][ICON_Bullet]Make an Air Attack within your aircraft''s attack range (pillage a tile, but without gaining the yield [Bombers only]; or attack the city/combat unit on a tile)[NEWLINE][NEWLINE][ICON_Bullet]Make a WMD Strike within your aircraft''s attack range [Bombers only] (drop a Nuclear/Thermonuclear Bomb)[NEWLINE][NEWLINE][ICON_Bullet]Deploy to a visible friendly/neutral tile near the air base [Fighters only] (station on a tile to intercept enemy aircraft on that tile and all adjacent tiles; uses the aircraft''s movement range as a max radius from the air base, but can only travel as much as the movement range in one turn)[NEWLINE][NEWLINE][ICON_Bullet]Re-Base (move to a new air base within 2x the unit''s movement range from the unit''s location)[NEWLINE][NEWLINE][ICON_Bullet]Rest and Repair[NEWLINE][NEWLINE]Each of these actions takes your full movement.[NEWLINE][NEWLINE]***Original Text***[NEWLINE][NEWLINE]Air units do not move around the map like ground and naval units. They must be "based" somewhere. The City Center can always hold one air unit, but building an Aerodrome, Airstrip, or Aircraft Carrier can increase your available slots. The Aerodrome can have up to 8 slots, the Airstrip 3, and the Aircraft Carrier begins with 2 but can gain more through promotions.', 'en_US'),
('LOC_PEDIA_CONCEPTS_PAGE_AIRCOMBAT_3_CHAPTER_CONTENT_TITLE', 'Deployed Fighters', 'en_US'),
('LOC_PEDIA_CONCEPTS_PAGE_AIRCOMBAT_3_CHAPTER_CONTENT_PARA_1', '***Better Rulebook***[NEWLINE][NEWLINE]Fighters can be deployed to any visible friendly/neutral tile within range of their air base. This range is deteremined by the Fighter unit''s movement range from the air base tile. However if a Fighter is deployed on, say, the westmost extreme of an air base''s range, it can''t redeploy to the eastmost extreme in one turn; it can only re-deploy as far east as the unit''s movement allows.[NEWLINE][NEWLINE]After it is deployed, the aircraft will begin flying an orbiting pattern around its effective intercept range (currently 1 hex radius). This should make it more clear to both the attacker and defender the status of the Fighters in the Patrol state.[NEWLINE][NEWLINE]The Patrol state is continuing, somewhat like the ''Fortify'' unit operation. Once an aircraft has been set to Patrol it will do so until it is ordered otherwise or it is destroyed. While Patrolling, the aircraft will continue to intercept and defend against multiple attackers.[NEWLINE][NEWLINE]At any time during the player''s turn, Fighter aircraft can ''Return to Base'' (station at a friendly air base) in order to heal. Aircraft stationed at an air base do not intercept attacking aircraft. Aircraft can heal at the end of the game turn when stationed on a City Center, Aerodrome, Airstrip, or Aircraft Carrier only if they have not been involved in combat. Healing is ''fastest'' on an Aerodrome district, and less so on Airstrips and Carriers. These values can be increased through promotions and/or Policies.[NEWLINE][NEWLINE]***Original Text***[NEWLINE][NEWLINE]Fighter aircraft can be deployed to a valid hex within their [ICON_Movement] Movement range from a friendly air base. After it is deployed, the aircraft will begin flying an orbiting pattern around its effective intercept range (currently 1 hex radius). This should make it more clear to both the attacker and defender the status of the Fighters in the Patrol state.[NEWLINE][NEWLINE]The Patrol state is continuing, somewhat like the ''Fortify'' unit operation. Once an aircraft has been set to Patrol it will do so until it is ordered otherwise or it is destroyed. While Patrolling, the aircraft will continue to intercept and defend against multiple attackers.[NEWLINE][NEWLINE]At any time during the player''s turn, Fighter aircraft can ''Return to Base'' (station at a friendly air base) in order to heal. Aircraft stationed at an air base do not intercept attacking aircraft. Aircraft can heal at the end of the game turn when stationed on a City Center, Aerodrome, Airstrip, or Aircraft Carrier only if they have not been involved in combat. Healing is ''fastest'' on an Aerodrome district, and less so on Airstrips and Carriers. These values can be increased through promotions and/or Policies.', 'en_US'),
('LOC_PEDIA_CONCEPTS_PAGE_AIRCOMBAT_3_CHAPTER_CONTENT_PARA_2', '', 'en_US'),
('LOC_PEDIA_CONCEPTS_PAGE_AIRCOMBAT_3_CHAPTER_CONTENT_PARA_3', '', 'en_US'),
('LOC_PEDIA_CONCEPTS_PAGE_AIRCOMBAT_4_CHAPTER_CONTENT_TITLE', 'Air Strikes', 'en_US'),
('LOC_PEDIA_CONCEPTS_PAGE_AIRCOMBAT_4_CHAPTER_CONTENT_PARA_1', '***Better Rulebook***[NEWLINE][NEWLINE]Bomber aircraft cannot deploy on Patrols, but they are instead considered ''stationed'' at a friendly air base and can carry out attacks from that base. Unlike Fighter aircraft, Bombers do not engage in dogfighting, but they head straight for their target and attack.[NEWLINE][NEWLINE]Strategic Bombing: Bomber aircraft can attack district buildings and city improvements directly, if no land unit currently occupies the target location. When successful, the result of this type of attack is the same as a ground unit Pillage action with one exception - the attacking air unit does not get the resulting benefit from the pillage action. In order for a bombing attack to be successful, the attacking air unit must be at 50% health or higher after resolving any damage taken from defending fighter aircraft and anti-air support units.[NEWLINE][NEWLINE]Priority Target: Air units also have the Priority Target ability which allows them to attack Support class units directly, without first having to eliminate the enemy combat unit placed in the same location.[NEWLINE][NEWLINE]***Original Text***[NEWLINE][NEWLINE]Heavy Bomber aircraft cannot deploy on Patrols, but they are instead considered ''stationed'' at a friendly air base and can carry out attacks from that base. Unlike Fighter aircraft, Bombers do not engage in dogfighting, but they head straight for their target and attack.[NEWLINE][NEWLINE]Strategic Bombing: Bomber aircraft can attack district buildings and city improvements directly, if no land unit currently occupies the target location. When successful, the result of this type of attack is the same as a ground unit Pillage action with one exception - the attacking air unit does not get the resulting benefit from the pillage action. In order for a bombing attack to be successful, the attacking air unit must be at 50% health or higher after resolving any damage taken from defending fighter aircraft and anti-air support units.[NEWLINE][NEWLINE]Priority Target: Air units also have the Priority Target ability which allows them to attack Support class units directly, without first having to eliminate the enemy combat unit placed in the same location.', 'en_US'),
('LOC_PEDIA_CONCEPTS_PAGE_AIRCOMBAT_5_CHAPTER_CONTENT_TITLE', 'Interceptions', 'en_US'),
('LOC_PEDIA_CONCEPTS_PAGE_AIRCOMBAT_5_CHAPTER_CONTENT_PARA_1', '***Better Rulebook***[NEWLINE][NEWLINE]Fighters can be deployed to a location on the map within range where they will patrol the adjacent plots.  If an air unit tries an air strike against a target within the range of an intercepting unit, the interceptor will fire on the attacker and do damage to it.[NEWLINE][NEWLINE]If an attacking aircraft enters the defensive radius of more than one patrolling aircraft, the highest strength aircraft is chosen to intercept. The remaining aircraft act in support of the defense by adding +5 to the strength of the main interceptor.[NEWLINE][NEWLINE]Once combat is resolved with any anti-air ground units and intercepting air units, if the attacking bomber survives, combat is then resolved with the original target. If a fighter is intercepted by another fighter on its way to a ground target, it is forced to only engage the enemy fighter and will not attack the ground target. Bombers do not have this restriction, and will continue to the target if they survives any defending interceptors and anti-air attacks.[NEWLINE][NEWLINE]***Original Text***[NEWLINE][NEWLINE]Fighters can be deployed to a location on the map within range where they will patrol the adjacent plots.  If an air unit tries an air strike against a target within the range of an intercepting unit, the interceptor will fire on the attacker and do damage to it.[NEWLINE][NEWLINE]If an attacking aircraft enters the defensive radius of more than one patrolling aircraft, the highest strength aircraft is chosen to intercept. The remaining aircraft act in support of the defense by adding +5 to the strength of the main interceptor.[NEWLINE][NEWLINE]Once combat is resolved with any anti-air ground units and intercepting air units, if the attacking bomber survives, combat is then resolved with the original target. If a fighter is intercepted by another fighter on its way to a ground target, it is forced to only engage the enemy fighter and will not attack the ground target. Bombers do not have this restriction, and will continue to the target if they survives any defending interceptors and anti-air attacks.', 'en_US'),




-- Military improvements that can't be built on resources
('LOC_IMPROVEMENT_AIRSTRIP_DESCRIPTION', 'Unlocks the Military Engineer ability to construct an Airstrip.[NEWLINE][NEWLINE]Can support 3 air units. Can only be built on flat terrain that has no resources. -1 Appeal. (The restriction of not building on resources is fixed in DB''s Unofficial Patch.) [BR]', 'en_US'),
('LOC_IMPROVEMENT_FORT_DESCRIPTION', 'Occupying unit receives +4 [ICON_Strength] Defense Strength, and automatically gains 2 turns of fortification.', 'en_US'),
('LOC_IMPROVEMENT_MISSILE_SILO_DESCRIPTION', 'Unlocks the Military Engineer ability to construct a Missile Silo.[NEWLINE][NEWLINE]Acts as a launch site for Nuclear and Thermonuclear Devices. Can only be built on terrain that has no resources. (The restriction of not building on resources is fixed in DB''s Unofficial Patch.) [BR]', 'en_US'),
('LOC_IMPROVEMENT_ROMAN_FORT_DESCRIPTION', 'Unlocks the Roman Legion ability to construct a Roman Fort, unique to Rome.[NEWLINE][NEWLINE]Occupying unit receives +4 [ICON_Strength] Defense Strength, and automatically gains 2 turns of fortification. Cannot be built on terrain with a resource. (The restriction of not building on resources is fixed in DB''s Unofficial Patch.) [BR]', 'en_US'),
('LOC_IMPROVEMENT_MAORI_PA_DESCRIPTION', 'Unlocks the Toa ability to construct a Pa, unique to Maori.[NEWLINE][NEWLINE]Occupying unit receives +4 [ICON_Strength] Defense Strength, and automatically gains 2 turns of fortification. A Maori unit occupying a Pa heals even if they just moved or attacked. Cannot be built on terrain with a resource. (The restriction of not building on resources is fixed in DB''s Unofficial Patch.) [BR]', 'en_US'),
('LOC_IMPROVEMENT_ALCAZAR_DESCRIPTION', 'Unlocks the Builder ability to construct an Alcazar.[NEWLINE][NEWLINE]+2 [ICON_Culture] Culture. Occupying unit receives +4 [ICON_Strength] Defense Strength, and automatically gains 2 turns of fortification. Cannot be built next to another Alcazar. Cannot be built on terrain with a resource. (The restriction of not building on resources is fixed in DB''s Unofficial Patch.) [BR]', 'en_US'),
('LOC_IMPROVEMENT_ALCAZAR_EXPANSION2_DESCRIPTION', 'Unlocks the Builder ability to construct an Alcazar.[NEWLINE][NEWLINE]+2 [ICON_Culture] Culture. Provides [ICON_SCIENCE] Science equal to 50% of the tile''s Appeal. Occupying unit receives +4 [ICON_Strength] Defense Strength, and automatically gains 2 turns of fortification. Provides [ICON_TOURISM] Tourism after researching Flight. Cannot be built next to another Alcazar. Cannot be built on terrain with a resource. (The restriction of not building on resources is fixed in DB''s Unofficial Patch.) [BR]', 'en_US'),


-- Meenakshi Temple doesn't give guru bonuses
('LOC_BUILDING_MEENAKSHI_TEMPLE_DESCRIPTION', 'Grants 2 Gurus. Gurus are 30% cheaper to purchase. Must be built adjacent to a Holy Site and you must have founded a Religion. (The intended guru adjacency bonuses do not work, but this is fixed in DB''s Unofficial Patch.) [BR]', 'en_US'),

-- Drones don't give strength bonuses
('LOC_UNIT_DRONE_DESCRIPTION', 'Atomic era support unit. Adds +1 [ICON_Range] Range to adjacent siege-class units. (The intended strength bonus for Modern era and later siege units does not work, but this is fixed in DB''s Unofficial Patch.) [BR]', 'en_US'),

-- Recon

-- Melee
('LOC_PROMOTION_BATTLECRY_DESCRIPTION', '+7 [ICON_Strength] Combat Strength vs. Melee, Anti-Cavalry and Ranged units. [BR]', 'en_US'),
('LOC_PROMOTION_TORTOISE_DESCRIPTION', '+10 [ICON_Strength] Combat Strength when defending vs. ranged and air attacks (but not siege units or bombers). [BR]', 'en_US'),
('LOC_PROMOTION_ZWEIHANDER_DESCRIPTION', '+7 [ICON_Strength] Combat Strength vs. Anti-Cavalry units. [BR]', 'en_US'),
('LOC_PROMOTION_URBAN_WARFARE_DESCRIPTION', '+10 [ICON_Strength] Combat Strength when fighting in a district or attacking a city or encampment. [BR]', 'en_US'),
('LOC_PROMOTION_AMPHIBIOUS_DESCRIPTION', 'No [ICON_Strength] Combat Strength penalty when attacking from sea or river. Unaffected by river, embarking, or disembarking [ICON_Movement] Movement costs. [BR]', 'en_US'),

-- Ranged
('LOC_PROMOTION_VOLLEY_DESCRIPTION', '+5 [ICON_Ranged] Ranged Attack Strength vs. land units. [BR]', 'en_US'),
('LOC_PROMOTION_ARROW_STORM_DESCRIPTION', '+7 [ICON_Ranged] Ranged Attack Strength vs. land and naval units.[NEWLINE]+7 [ICON_Strength] Combat Strength defending vs. land and naval units. [BR]', 'en_US'),
('LOC_PROMOTION_INCENDIARIES_DESCRIPTION', '+7 [ICON_Ranged] Ranged Attack Strength vs. cities and encampments. [BR]', 'en_US'),

-- Anti-Cavalry
('LOC_PROMOTION_SCHILTRON_DESCRIPTION', '+10 [ICON_Strength] Combat Strength when defending vs. Melee units. [BR]', 'en_US'),

-- Light Cavalry
('LOC_PROMOTION_CAPARISON_DESCRIPTION', '+5 [ICON_Strength] Combat Strength vs. Anti-Cavalry units. [BR]', 'en_US'),
('LOC_PROMOTION_COURSERS_DESCRIPTION', '+5 [ICON_Strength] Combat Strength when attacking Ranged and Siege units. [BR]', 'en_US'),
('LOC_PROMOTION_SPIKING_THE_GUNS_DESCRIPTION', '+7 [ICON_Strength] Combat Strength when attacking Siege units. [BR]', 'en_US'),

-- Heavy Cavalry
('LOC_PROMOTION_CHARGE_DESCRIPTION', '+10 [ICON_Strength] Combat Strength vs. a fortified defender. [BR]', 'en_US'),
('LOC_PROMOTION_BARDING_DESCRIPTION', '+7 [ICON_Strength] Combat Strength when defending vs. ranged and air attacks (but not siege units or bombers). [BR]', 'en_US'),
('LOC_PROMOTION_MARAUDING_DESCRIPTION', '+7 [ICON_Strength] Combat Strength when fighting in a district or attacking a city or encampment. [BR]', 'en_US'),
('LOC_PROMOTION_ROUT_DESCRIPTION', '+5 [ICON_Strength] Combat Strength when attacking damaged units. [BR]', 'en_US'),
('LOC_PROMOTION_ARMOR_PIERCING_DESCRIPTION', '+7 [ICON_Strength] Combat Strength vs. Heavy Cavalry units. [BR]', 'en_US'),
('LOC_PROMOTION_REACTIVE_ARMOR_DESCRIPTION', '+7 [ICON_Strength] Combat Strength when defending vs Heavy Cavalry and Anti-Cavalry units. [BR]', 'en_US'),


-- Siege
('LOC_PROMOTION_GRAPE_SHOT_DESCRIPTION', '+7 [ICON_Bombard] Ranged Attack Strength vs. land units.[NEWLINE]+7 [ICON_Strength] Combat Strength defending vs. land units. [BR]', 'en_US'),
('LOC_PROMOTION_SHRAPNEL_DESCRIPTION', '+10 [ICON_Bombard] Ranged Attack Strength vs. land units.[NEWLINE]+10 [ICON_Strength] Combat Strength defending vs. land units. [BR]', 'en_US'),
('LOC_PROMOTION_ADVANCED_RANGEFINDING_DESCRIPTION', '+10 [ICON_Bombard] Ranged Attack Strength vs. naval units. [BR]', 'en_US'),
('LOC_PROMOTION_SHELLS_DESCRIPTION', '+7 [ICON_Bombard] Ranged Attack Strength vs. cities and encampments. [BR]', 'en_US'),

-- Warrior Monks


-- Naval Melee
('LOC_PROMOTION_EMBOLON_DESCRIPTION', '+7 [ICON_Strength] Combat Strength vs. naval units. [BR]', 'en_US'),
('LOC_PROMOTION_REINFORCED_HULL_DESCRIPTION', '+10 [ICON_Strength] Combat Strength when defending vs. ranged and air attacks (but not siege units or bombers). [BR]', 'en_US'),

-- Naval Ranged
('LOC_PROMOTION_ROLLING_BARRAGE_DESCRIPTION', '+10 [ICON_Ranged] Ranged Attack Strength vs. cities and encampments. [BR]', 'en_US'),
('LOC_PROMOTION_LINE_OF_BATTLE_DESCRIPTION', '+7 [ICON_Ranged] Ranged Attack Strength vs. naval units. [BR]', 'en_US'),
('LOC_PROMOTION_BOMBARDMENT_DESCRIPTION', '+7 [ICON_Ranged] Ranged Attack Strength vs. cities and encampments. [BR]', 'en_US'),
('LOC_PROMOTION_PREPARATORY_FIRE_DESCRIPTION', '+7 [ICON_Ranged] Ranged Attack Strength vs. land units. [BR]', 'en_US'),

-- Naval Raider
('LOC_PROMOTION_HOMING_TORPEDOES_DESCRIPTION', '+10 [ICON_Ranged] Ranged Attack Strength vs. naval units.[NEWLINE]+7 [ICON_Strength] Combat Strength defending vs. naval units. [BR]', 'en_US'),

-- Naval Carrier


-- Air Fighters
('LOC_PROMOTION_DOGFIGHTING_DESCRIPTION', '+7 [ICON_Strength] Combat Strength vs. Air Fighter units. [BR]', 'en_US'),
('LOC_PROMOTION_INTERCEPTOR_DESCRIPTION', '+7 [ICON_Strength] Combat Strength vs. Air Bomber units. [BR]', 'en_US'),
('LOC_PROMOTION_COCKPIT_ARMOR_DESCRIPTION', '+7 [ICON_Ranged] Air Attack Strength vs. Anti-Aircraft units.[NEWLINE]+7 [ICON_Ranged] Air Attack Strength vs Anti-Aircraft damage when attacking tiles they cover. [BR]', 'en_US'),
('LOC_PROMOTION_STRAFE_DESCRIPTION', '+17 [ICON_Ranged] Air Attack Strength vs. cities, encampments, and all land and naval units that aren''t Cavalry.[NEWLINE]+17 [ICON_Ranged] Air Attack Strength vs Anti-Aircraft damage when attacking tiles they cover. [BR]', 'en_US'),

-- Air Bombers
('LOC_PROMOTION_BOX_FORMATION_DESCRIPTION', '+7 [ICON_Strength] Combat Strength vs. Air Fighter units. [BR]', 'en_US'),
('LOC_PROMOTION_TANK_BUSTER_DESCRIPTION', '+17 [ICON_Ranged] Air Attack Strength vs. Cavalry units. [BR]', 'en_US'),
('LOC_PROMOTION_TORPEDO_BOMBER_DESCRIPTION', '+17 [ICON_Ranged] Air Attack Strength vs. naval units. [BR]', 'en_US'),
('LOC_PROMOTION_CLOSE_AIR_SUPPORT_DESCRIPTION', '+12 [ICON_Ranged] Air Attack Strength vs. land units. [BR]', 'en_US'),
('LOC_PROMOTION_EVASIVE_MANEUVERS_DESCRIPTION', '+7 [ICON_Ranged] Air Attack Strength vs. Anti-Aircraft units.[NEWLINE]+7 [ICON_Ranged] Air Attack Strength vs Anti-Aircraft damage when attacking tiles they cover. [BR]', 'en_US')
 
;