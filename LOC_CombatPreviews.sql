-- ('', '', 'en_US'),

INSERT OR REPLACE INTO LocalizedText 
(Tag, Text, Language) VALUES

('DB_POS_AMOUNT', '+{1_Amount} ', 'en_US'),
('DB_POS_VALUE', '+{1_Value} ', 'en_US'),
('DB_NEG_AMOUNT', '[COLOR_RED]{1_Amount}[ENDCOLOR] ', 'en_US'),
('DB_NEG_VALUE', '[COLOR_RED]{1_Value}[ENDCOLOR] ', 'en_US'),
('DB_NEG_AMOUNT_MINUS', '[COLOR_RED]-{1_Amount}[ENDCOLOR] ', 'en_US'),
('DB_NEG_VALUE_MINUS', '[COLOR_RED]-{1_Value}[ENDCOLOR] ', 'en_US'),

-- missing in base; added by BR (see ModifierStrings.sql)
('BR_LOC_PREVIEW_BARDING', '{DB_POS_AMOUNT}{LOC_PROMOTION_BARDING_NAME} {LOC_PROMOTION_DESCRIPTOR_PREVIEW_TEXT}{LOC_BR_LABEL}', 'en_US'),
('BR_LOC_PREVIEW_INTERCEPTOR', '{DB_POS_AMOUNT}{LOC_PROMOTION_INTERCEPTOR_NAME} {LOC_PROMOTION_DESCRIPTOR_PREVIEW_TEXT}{LOC_BR_LABEL}', 'en_US'),
('BR_LOC_PREVIEW_DRONE_STRENGTH', '{DB_POS_VALUE}adjacent {LOC_UNIT_DRONE_NAME}{LOC_BR_LABEL}', 'en_US'),
('BR_LOC_PREVIEW_REDOUBT', '{DB_POS_AMOUNT}{LOC_GOVERNOR_PROMOTION_REDOUBT_NAME} {LOC_GOVERNOR_DESCRIPTOR_PREVIEW_TEXT}{LOC_BR_LABEL}', 'en_US'),

-- fixed by BR (more clear wording)
('LOC_COMBAT_DIFFICULTY_SCALING', '{DB_POS_VALUE}{LOC_GAME_HANDICAP}', 'en_US'),  -- didn't use BR_LABEL because it causes a newline (and this modifer is ubiquitous)
('LOC_COMBAT_PREVIEW_DAMAGED_DISTRICT_DESC', '{DB_NEG_VALUE}Damage to city/encampment{LOC_BR_LABEL}', 'en_US'),
('LOC_COMBAT_PREVIEW_ESPIONAGE_BONUS', '{DB_POS_VALUE}Higher Diplomatic Visibility{LOC_BR_LABEL}', 'en_US'),
('LOC_COMBAT_PREVIEW_FORTIFIED_DEFENSE_DESC', '{DB_POS_VALUE}Fortified Unit{LOC_BR_LABEL}', 'en_US'),
('LOC_COMBAT_PREVIEW_LESS_EFFECTIVE_VS_WALLS_DESC', '{DB_NEG_VALUE_MINUS}Less effective vs cities and encampments{LOC_BR_LABEL}', 'en_US'), -- when archers, etc attack

-- consistent red font on negative modifiers (too minor to merit BR_LABEL)
('LOC_COMBAT_PREVIEW_TERRAIN_PENALTY', '{DB_NEG_VALUE}Unfavorable Terrain', 'en_US'),
('LOC_COMBAT_PREVIEW_DAMAGED_DISTRICT_DESC', '{DB_NEG_VALUE}Damaged district', 'en_US'),
('LOC_COMBAT_PREVIEW_EMBARKED_UNIT_STRENGTH', '{DB_NEG_VALUE}Adjusted base strength when embarked', 'en_US'),
('LOC_COMBAT_PREVIEW_DAMAGE_FROM_INTERCEPTOR', '{DB_NEG_VALUE}due to damage from interceptor', 'en_US'),
('LOC_COMBAT_PREVIEW_DAMAGE_FROM_ANTI_AIR', '{DB_NEG_VALUE}due to damage from anti-air', 'en_US'),
('LOC_COMBAT_PREVIEW_AMPHIBIOUS_ATTACK_PENALTY', '{DB_NEG_AMOUNT}Amphibious attack penalty', 'en_US'),
('LOC_COMBAT_PREVIEW_LESS_EFFECTIVE_VS_UNITS_DESC', '{DB_NEG_VALUE_MINUS}Less effective vs units', 'en_US') -- bombard vs units
;
