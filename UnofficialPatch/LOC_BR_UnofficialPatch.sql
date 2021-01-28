-- ('', '', 'en_US'),

INSERT OR REPLACE INTO LocalizedText 
(Tag, Text, Language) VALUES

('LOC_UP_LABEL', ' [COLOR:SuzerainDark][BR][ENDCOLOR]', 'en_US'),

-- Emplacement promotion
('LOC_PROMOTION_EMPLACEMENT_DESCRIPTION', '+10 [ICON_Strength] Combat Strength when defending vs. city/encampment attacks{LOC_UP_LABEL}', 'en_US'),


-- Siege promotions
('LOC_PROMOTION_GRAPE_SHOT_DESCRIPTION', '+7 [ICON_Bombard] Ranged Attack Strength vs. land units.{LOC_UP_LABEL}', 'en_US'),
('LOC_PROMOTION_SHRAPNEL_DESCRIPTION', '+10 [ICON_Bombard] Ranged Attack Strength vs. land units.{LOC_UP_LABEL}', 'en_US'),

-- Military improvements that can't be built on resources
('LOC_IMPROVEMENT_AIRSTRIP_DESCRIPTION', 'Airstrips are air bases that can station 3 air units. Military Engineers can construct Airstrips in friendly or neutral territory, but only on a flat featureless land tile. -1 appeal to adjacent tiles.[NEWLINE][NEWLINE]Can be built on resources.{LOC_UP_LABEL}', 'en_US'),
('LOC_IMPROVEMENT_MISSILE_SILO_DESCRIPTION', 'Missile Silos are a launch site for Nuclear and Thermonuclear Devices. Military Engineers can construct Missile Silos in friendly territory, but only on a flat featureless land tile.[NEWLINE][NEWLINE]Can be built on resources.{LOC_UP_LABEL}', 'en_US'),
('LOC_IMPROVEMENT_FORT_DESCRIPTION', 'Forts give an occupying unit +4 [ICON_Strength] Combat Strength on defense, and 2 turns of fortification (an additional +6 [ICON_Strength] Combat Strength). Military Engineers can construct Forts in friendly or neutral territory, but only on a featureless land tile.[NEWLINE][NEWLINE]Can be built on resources.{LOC_UP_LABEL}', 'en_US'),
('LOC_IMPROVEMENT_ROMAN_FORT_DESCRIPTION', 'Roman Forts give an occupying unit +4 [ICON_Strength] Combat Strength on defense, and 2 turns of fortification (an additional +6 [ICON_Strength] Combat Strength). Roman Legions can construct Roman Forts in friendly or neutral territory, but only on a featureless land tile.[NEWLINE][NEWLINE]Can be built on resources.{LOC_UP_LABEL}', 'en_US'),
('LOC_IMPROVEMENT_MAORI_PA_DESCRIPTION', 'Pas give an occupying unit +4 [ICON_Strength] Combat Strength on defense, and 2 turns of fortification (an additional +6 [ICON_Strength] Combat Strength). A Maori unit occupying a Pa heals even if they just moved or attacked. Toas can construct Pas in friendly or neutral territory, but only on a featureless land tile.[NEWLINE][NEWLINE]Can be built on resources.{LOC_UP_LABEL}', 'en_US'),
('LOC_IMPROVEMENT_ALCAZAR_DESCRIPTION', 'Alcazars give an occupying unit +4 [ICON_Strength] Combat Strength on defense, and 2 turns of fortification (an additional +6 [ICON_Strength] Combat Strength). Provides +2 [ICON_Culture] Culture. Builders can construct Alcazars in friendly or neutral territory, but only on a featureless land tile. Cannot be built next to another Alcazar.[NEWLINE][NEWLINE]Can be built on resources.{LOC_UP_LABEL}', 'en_US'),
('LOC_IMPROVEMENT_ALCAZAR_EXPANSION2_DESCRIPTION', 'Alcazars give an occupying unit +4 [ICON_Strength] Combat Strength on defense, and 2 turns of fortification (an additional +6 [ICON_Strength] Combat Strength). Provides +2 [ICON_Culture] Culture, [ICON_SCIENCE] Science equal to 50% of the tile''s Appeal, and [ICON_TOURISM] Tourism after researching Flight. Builders can construct Alcazars in friendly or neutral territory, but only on a featureless land tile. Cannot be built next to another Alcazar.[NEWLINE][NEWLINE]Can be built on resources.{LOC_UP_LABEL}', 'en_US'),

-- Fix Observation Balloon, Drone
('LOC_UNIT_DRONE_DESCRIPTION', 'Atomic era support unit. Adds +1 [ICON_Range] Range to Siege units within 1 tile. Adds +5 [ICON_Bombard] Bombard Strength to Modern era or later Siege units within 1 tile. Ignores terrain costs.{LOC_UP_LABEL}', 'en_US'),
('LOC_UNIT_OBSERVATION_BALLOON_DESCRIPTION', 'Modern era support unit. Adds +1 [ICON_Range] Range to Siege units within 1 tile. Ignores terrain costs.{LOC_UP_LABEL}', 'en_US'),


-- Fix Meenakshi temple
('LOC_BUILDING_MEENAKSHI_TEMPLE_DESCRIPTION', 'Grants 2 Gurus. Gurus are 30% cheaper to purchase. Religious units adjacent to a Guru receive +5 [ICON_Religion] Religious Strength in Theological Combat and +1 [ICON_Movement] Movement. (Another Guru does not provide additional strength or movement.) Must be built adjacent to a Holy Site and you must have founded a Religion.{LOC_UP_LABEL}', 'en_US'),
('LOC_DB_ABILITY_ENHANCE_COMBAT_WHEN_ADJ_GURU_NAME', 'Meenakshi Adjacent Guru Combat{LOC_UP_LABEL}', 'en_US'),
('LOC_DB_ABILITY_ENHANCE_COMBAT_WHEN_ADJ_GURU_DESCRIPTION', 'When next to a Guru, +5 [ICON_Religion] Religious Strength{LOC_UP_LABEL}', 'en_US'),
('LOC_DB_ABILITY_ENHANCE_COMBAT_WHEN_ADJ_GURU_COMBAT_DESCRIPTION', '+{1_Value} Meenakshi Temple{LOC_UP_LABEL}', 'en_US'),

('LOC_DB_ABILITY_ENHANCE_MOVEMENT_WHEN_ADJ_GURU_NAME', 'Meenakshi Adjacent Guru Movement{LOC_UP_LABEL}', 'en_US'),
('LOC_DB_ABILITY_ENHANCE_MOVEMENT_WHEN_ADJ_GURU_DESCRIPTION', 'When next to a Guru, +1 [ICON_Movement] Movement{LOC_UP_LABEL}', 'en_US')
;
