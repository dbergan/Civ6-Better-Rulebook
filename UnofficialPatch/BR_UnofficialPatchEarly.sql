-- Fascism War Weariness
UPDATE ModifierArguments SET Value = CASE WHEN Value > 0 THEN Value * -1 ELSE Value END WHERE ModifierId = 'FASCISM_WAR_WEARINESS' AND Name = 'Amount' ;

-- Seige promotions: Shrapnel and Grape Shot should only apply to attacks
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('SHRAPNEL_REQUIREMENTS', 'PLAYER_IS_ATTACKER_REQUIREMENTS') ;
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('GRAPE_SHOT_REQUIREMENTS', 'PLAYER_IS_ATTACKER_REQUIREMENTS') ;

-- Land ranged promotion: Arrow Storm should not work against cities/encampments
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('ARROW_STORM_REQUIREMENTS', 'OPPONENT_IS_NOT_DISTRICT') ;

-- Land ranged promotion: Emplacement is bugged with this requirement (still has OPPONENT_IS_DISTRICT and PLAYER_IS_DEFENDER_REQUIREMENTS)
DELETE FROM RequirementSetRequirements WHERE RequirementSetId = 'EMPLACEMENT_REQUIREMENTS' AND RequirementId = 'OPPONENT_PLOT_IS_CITY_CENTER_REQUIREMENT' ;

-- Fix Information Age great admiral sea movement
UPDATE ModifierArguments SET Name = 'AbilityType' WHERE ModifierId = 'GREATPERSON_MOVEMENT_AOE_INFORMATION_SEA' AND Name = 'ModifierId' ;

-- Fix Barding combat preview
UPDATE ModifierStrings SET Text = '+{1_AMOUNT} {LOC_PROMOTION_BARDING_NAME} {LOC_PROMOTION_DESCRIPTOR_PREVIEW_TEXT}{LOC_UP_LABEL}' WHERE ModifierId = 'TOP_COVER_DEFENSE_BONUS_VS_RANGED' AND Context = 'Preview' ;

-- Fix Interceptor combat preview
UPDATE ModifierStrings SET Text = '+{1_AMOUNT} {LOC_PROMOTION_INTERCEPTOR_NAME} {LOC_PROMOTION_DESCRIPTOR_PREVIEW_TEXT}{LOC_UP_LABEL}' WHERE ModifierId = 'INTERCEPTOR_BONUS_VS_BOMBERS' AND Context = 'Preview' ;

-- Fix Water Mill - resources need to have a farm
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES
('RESOURCE_IS_RICE', 'REQUIRES_PLOT_HAS_FARM'),
('RESOURCE_IS_WHEAT', 'REQUIRES_PLOT_HAS_FARM'),
('RESOURCE_IS_MAIZE', 'REQUIRES_PLOT_HAS_FARM') ;

-- Fix Drone and Observation Balloon ignoring terrain costs
INSERT OR REPLACE INTO TypeTags (Type, Tag) VALUES ('ABILITY_IGNORE_TERRAIN_COST', 'CLASS_OBSERVATION') ;
INSERT OR REPLACE INTO TypeTags (Type, Tag) VALUES ('ABILITY_IGNORE_CROSSING_RIVERS_COST', 'CLASS_OBSERVATION') ;


-- Fix Meenakshi temple
DELETE FROM BuildingModifiers WHERE ModifierId = 'MEENAKSHITEMPLE_RELIGIOUS_UNITS_COMBAT' OR ModifierId = 'MEENAKSHITEMPLE_RELIGIOUS_UNITS_MOVEMENT' ;
DELETE FROM Modifiers WHERE ModifierId = 'MEENAKSHITEMPLE_RELIGIOUS_UNITS_COMBAT' OR ModifierId = 'MEENAKSHITEMPLE_RELIGIOUS_UNITS_MOVEMENT' ;
DELETE FROM ModifierArguments WHERE ModifierId = 'MEENAKSHITEMPLE_RELIGIOUS_UNITS_COMBAT' OR ModifierId = 'MEENAKSHITEMPLE_RELIGIOUS_UNITS_MOVEMENT' ;
DELETE FROM Types WHERE Type = 'ABILITY_SAGE_COMBAT_AOE_RELIGIOUS' OR Type = 'ABILITY_GUIDE_MOVEMENT_AOE_RELIGIOUS' ;
DELETE FROM TypeTags WHERE Type = 'ABILITY_SAGE_COMBAT_AOE_RELIGIOUS' OR Type = 'ABILITY_GUIDE_MOVEMENT_AOE_RELIGIOUS' ;
DELETE FROM UnitAbilities WHERE UnitAbilityType = 'ABILITY_SAGE_COMBAT_AOE_RELIGIOUS' OR UnitAbilityType = 'ABILITY_GUIDE_MOVEMENT_AOE_RELIGIOUS' ;
DELETE FROM UnitAbilityModifiers WHERE UnitAbilityType = 'ABILITY_SAGE_COMBAT_AOE_RELIGIOUS' OR UnitAbilityType = 'ABILITY_GUIDE_MOVEMENT_AOE_RELIGIOUS' ; -- SAGE_COMBAT_AOE_RELIGIOUS_XP2, GUIDE_MOVEMENT_AOE_RELIGIOUS_XP2
DELETE FROM Modifiers WHERE ModifierId = 'SAGE_COMBAT_AOE_RELIGIOUS_XP2' OR ModifierId = 'GUIDE_MOVEMENT_AOE_RELIGIOUS_XP2' ; -- MODIFIER_PLAYER_UNITS_GRANT_ABILITY
DELETE FROM ModifierArguments WHERE ModifierId = 'SAGE_COMBAT_AOE_RELIGIOUS_XP2' OR ModifierId = 'GUIDE_MOVEMENT_AOE_RELIGIOUS_XP2' ; -- ABILITY_GURU_STRENGTH, ABILITY_GURU_MOVEMENT

DELETE FROM Types WHERE Type = 'ABILITY_GURU_STRENGTH' OR Type = 'ABILITY_GURU_MOVEMENT' ;
DELETE FROM TypeTags WHERE Type = 'ABILITY_GURU_STRENGTH' OR Type = 'ABILITY_GURU_MOVEMENT' ; -- CLASS_RELIGIOUS_ALL
DELETE FROM UnitAbilities WHERE UnitAbilityType = 'ABILITY_GURU_STRENGTH' OR UnitAbilityType = 'ABILITY_GURU_MOVEMENT' ;
DELETE FROM UnitAbilityModifiers WHERE UnitAbilityType = 'ABILITY_GURU_STRENGTH' OR UnitAbilityType = 'ABILITY_GURU_MOVEMENT' ; -- GURU_STRENGTH_XP2, GURU_MOVEMENT_XP2
DELETE FROM Modifiers WHERE ModifierId = 'GURU_STRENGTH_XP2' OR ModifierId = 'GURU_MOVEMENT_XP2' ; -- AOE_GURU_REQUIREMENTS_XP2
DELETE FROM ModifierArguments WHERE ModifierId = 'GURU_STRENGTH_XP2' OR ModifierId = 'GURU_MOVEMENT_XP2' ;

INSERT OR REPLACE INTO Requirements (RequirementId, RequirementType) VALUES ('DB_REQ_UNIT_IS_GURU', 'REQUIREMENT_UNIT_TYPE_MATCHES') ;
INSERT OR REPLACE INTO RequirementArguments (RequirementId, Name, Value) VALUES ('DB_REQ_UNIT_IS_GURU', 'UnitType', 'UNIT_GURU') ;
INSERT OR REPLACE INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('DB_REQSET_UNIT_IS_GURU', 'REQUIREMENTSET_TEST_ALL') ;
INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('DB_REQSET_UNIT_IS_GURU', 'DB_REQ_UNIT_IS_GURU') ;

INSERT OR REPLACE INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('DB_REQSET_UNIT_IS_RELIGIOUS_ALL', 'REQUIREMENTSET_TEST_ALL') ;
INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('DB_REQSET_UNIT_IS_RELIGIOUS_ALL', 'REQUIRES_UNIT_IS_RELIGIOUS_ALL') ;

INSERT OR REPLACE INTO Requirements (RequirementId, RequirementType) VALUES ('DB_REQ_NEXTTO_GURU', 'REQUIREMENT_PLOT_ADJACENT_FRIENDLY_UNIT_TYPE_MATCHES') ;
INSERT OR REPLACE INTO RequirementArguments (RequirementId, Name, Value) VALUES ('DB_REQ_NEXTTO_GURU', 'UnitType', 'UNIT_GURU') ;
INSERT OR REPLACE INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('DB_REQSET_NEXTTO_GURU', 'REQUIREMENTSET_TEST_ALL') ;
INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('DB_REQSET_NEXTTO_GURU', 'DB_REQ_NEXTTO_GURU') ;


-- Meenakshi combat
INSERT OR REPLACE INTO BuildingModifiers (BuildingType, ModifierId) VALUES 
                              ('BUILDING_MEENAKSHI_TEMPLE', 'DB_MEENAKSHITEMPLE_GURU_ENHANCES_COMBAT') ;
INSERT OR REPLACE INTO Modifiers (ModifierId, ModifierType, Permanent, SubjectRequirementSetId) VALUES 
                      ('DB_MEENAKSHITEMPLE_GURU_ENHANCES_COMBAT', 'MODIFIER_PLAYER_UNITS_GRANT_ABILITY', 0, 'DB_REQSET_UNIT_IS_RELIGIOUS_ALL') ;
INSERT OR REPLACE INTO ModifierArguments (ModifierId, Name, Value) VALUES 
                      ('DB_MEENAKSHITEMPLE_GURU_ENHANCES_COMBAT', 'AbilityType', 'DB_ABILITY_ENHANCE_COMBAT_WHEN_ADJ_GURU') ;

INSERT OR REPLACE INTO Types (Type, Kind) VALUES ('DB_ABILITY_ENHANCE_COMBAT_WHEN_ADJ_GURU', 'KIND_ABILITY') ;
INSERT OR REPLACE INTO TypeTags (Type, Tag) VALUES ('DB_ABILITY_ENHANCE_COMBAT_WHEN_ADJ_GURU', 'CLASS_RELIGIOUS_ALL') ;
INSERT OR REPLACE INTO UnitAbilities (UnitAbilityType, Inactive, Name, Description) VALUES ('DB_ABILITY_ENHANCE_COMBAT_WHEN_ADJ_GURU', 1, 'LOC_DB_ABILITY_ENHANCE_COMBAT_WHEN_ADJ_GURU_NAME', 'LOC_DB_ABILITY_ENHANCE_COMBAT_WHEN_ADJ_GURU_DESCRIPTION') ;
INSERT OR REPLACE INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('DB_ABILITY_ENHANCE_COMBAT_WHEN_ADJ_GURU', 'DB_ENHANCE_COMBAT_WHEN_ADJ_GURU') ;

INSERT OR REPLACE INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('DB_ENHANCE_COMBAT_WHEN_ADJ_GURU', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'DB_REQSET_NEXTTO_GURU') ;
INSERT OR REPLACE INTO ModifierArguments (ModifierId, Name, Value) VALUES ('DB_ENHANCE_COMBAT_WHEN_ADJ_GURU', 'Amount', 5) ;
INSERT OR REPLACE INTO ModifierStrings (ModifierId, Context, Text) VALUES ('DB_ENHANCE_COMBAT_WHEN_ADJ_GURU', 'Preview', 'LOC_DB_ABILITY_ENHANCE_COMBAT_WHEN_ADJ_GURU_COMBAT_DESCRIPTION') ;


-- Meenakshi Movement
INSERT OR REPLACE INTO BuildingModifiers (BuildingType, ModifierId) VALUES 
                              ('BUILDING_MEENAKSHI_TEMPLE', 'DB_MEENAKSHITEMPLE_GURU_ENHANCES_MOVEMENT') ;
INSERT OR REPLACE INTO Modifiers (ModifierId, ModifierType, Permanent, SubjectRequirementSetId) VALUES 
                      ('DB_MEENAKSHITEMPLE_GURU_ENHANCES_MOVEMENT', 'MODIFIER_PLAYER_UNITS_GRANT_ABILITY', 0, 'DB_REQSET_UNIT_IS_RELIGIOUS_ALL') ;
INSERT OR REPLACE INTO ModifierArguments (ModifierId, Name, Value) VALUES 
                      ('DB_MEENAKSHITEMPLE_GURU_ENHANCES_MOVEMENT', 'AbilityType', 'DB_ABILITY_ENHANCE_MOVEMENT_WHEN_ADJ_GURU') ;

INSERT OR REPLACE INTO Types (Type, Kind) VALUES ('DB_ABILITY_ENHANCE_MOVEMENT_WHEN_ADJ_GURU', 'KIND_ABILITY') ;
INSERT OR REPLACE INTO TypeTags (Type, Tag) VALUES ('DB_ABILITY_ENHANCE_MOVEMENT_WHEN_ADJ_GURU', 'CLASS_RELIGIOUS_ALL') ;
INSERT OR REPLACE INTO UnitAbilities (UnitAbilityType, Inactive, Name, Description) VALUES ('DB_ABILITY_ENHANCE_MOVEMENT_WHEN_ADJ_GURU', 1, 'LOC_DB_ABILITY_ENHANCE_MOVEMENT_WHEN_ADJ_GURU_NAME', 'LOC_DB_ABILITY_ENHANCE_MOVEMENT_WHEN_ADJ_GURU_DESCRIPTION') ;
INSERT OR REPLACE INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('DB_ABILITY_ENHANCE_MOVEMENT_WHEN_ADJ_GURU', 'DB_ENHANCE_MOVEMENT_WHEN_ADJ_GURU') ;

INSERT OR REPLACE INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('DB_ENHANCE_MOVEMENT_WHEN_ADJ_GURU', 'MODIFIER_PLAYER_UNIT_ADJUST_MOVEMENT', 'DB_REQSET_NEXTTO_GURU') ;
INSERT OR REPLACE INTO ModifierArguments (ModifierId, Name, Value) VALUES ('DB_ENHANCE_MOVEMENT_WHEN_ADJ_GURU', 'Amount', 1) ;