--	Take away all modifiers that give seige units bonus movement (because with bonus movement, the units can move & shoot without the Expert Crew promotion)
--		They can still get the movement bonuses from war declarations with Chandragupta (TRAIT_TERRITORIAL_WAR_MOVEMENT), Cyrus (TRAIT_FALLBABYLON_SURPRISE_MOVEMENT), and Robert the Bruce (TRAIT_LIBERATION_WAR_MOVEMENT)
--		These traits are all based on EFFECT_ADD_DIPLOMATIC_MOVEMENT_MODIFIER  which modifies the player, not the units. Therefore I can't set a requirement on the modifier to limit which units it applies to.
DELETE FROM TypeTags WHERE Type = 'ABILITY_GREAT_GENERAL_MOVEMENT' AND Tag = 'CLASS_SIEGE' ;
DELETE FROM TypeTags WHERE Type = 'ABILITY_GREAT_GENERAL_SINGLE_MOVEMENT' AND Tag = 'CLASS_SIEGE' ;
DELETE FROM TypeTags WHERE Type = 'ABILITY_GREAT_GENERAL_DOUBLE_MOVEMENT' AND Tag = 'CLASS_SIEGE' ;
DELETE FROM TypeTags WHERE Type = 'ABILITY_GREAT_GENERAL_TRIPLE_MOVEMENT' AND Tag = 'CLASS_SIEGE' ;
DELETE FROM TypeTags WHERE Type = 'ABILITY_COMANDANTE_AOE_MOVEMENT' AND Tag = 'CLASS_SIEGE' ;

INSERT OR IGNORE INTO Tags (Tag, Vocabulary) VALUES ('DB_CLASS_NOT_SIEGE_SETUP', 'ABILITY_CLASS') ;
INSERT OR IGNORE INTO TypeTags (Type, Tag)
SELECT UnitType, 'DB_CLASS_NOT_SIEGE_SETUP' FROM Units WHERE UnitType NOT IN (SELECT Type FROM TypeTags WHERE Tag = 'CLASS_SIEGE_SETUP') ;

INSERT OR REPLACE INTO Requirements (RequirementId, RequirementType) VALUES ('DB_REQ_NOT_SIEGE_SETUP', 'REQUIREMENT_UNIT_TAG_MATCHES') ;
INSERT OR REPLACE INTO RequirementArguments (RequirementId, Name, Value) VALUES ('DB_REQ_NOT_SIEGE_SETUP', 'Tag', 'DB_CLASS_NOT_SIEGE_SETUP') ;
INSERT OR REPLACE INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('DB_REQSET_NOT_SIEGE_SETUP', 'REQUIREMENTSET_TEST_ALL') ;
INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('DB_REQSET_NOT_SIEGE_SETUP', 'DB_REQ_NOT_SIEGE_SETUP') ;

UPDATE Modifiers SET SubjectRequirementSetId = 'DB_REQSET_NOT_SIEGE_SETUP' WHERE Modifierid = 'LOGISTICS_FRIENDLYTERRITORYMOVEMENTBONUS' ;
UPDATE Modifiers SET SubjectRequirementSetId = 'DB_REQSET_NOT_SIEGE_SETUP' WHERE Modifierid = 'TRAIT_EJERCITO_PATRIOTA_EXTRA_MOVEMENT' ;

INSERT INTO UnitPromotionModifiers  (UnitPromotionType, ModifierId) VALUES ('PROMOTION_EXPERT_CREW', 'BR_EXPERT_CREW_MOVEMENT') ;
INSERT INTO Modifiers (ModifierId, ModifierType) VALUES ('BR_EXPERT_CREW_MOVEMENT', 'MODIFIER_PLAYER_UNIT_ADJUST_MOVEMENT') ;
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('BR_EXPERT_CREW_MOVEMENT', 'Amount', 1) ;
