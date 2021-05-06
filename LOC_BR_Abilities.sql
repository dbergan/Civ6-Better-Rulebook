-- ('', '', 'en_US'),

INSERT OR REPLACE INTO LocalizedText 
(Tag, Text, Language) VALUES

-- original
('LOC_BR_ABILITY_EXPERT_MARKSMAN_NAME', 'Extra Attack{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_BR_ABILITY_EXPERT_MARKSMAN_DESCRIPTION', '{DB_POS_COLOR}+1[ENDCOLOR] attack per turn if unit has not used all its movement{LOC_EMPTY_LABEL}', 'en_US'),

('LOC_BR_ABILITY_RECEIVE_RANGE_BONUS_NAME', 'Airborne Observation{LOC_EMPTY_LABEL}', 'en_US'),													-- always?
('LOC_BR_ABILITY_RECEIVE_RANGE_BONUS_DESCRIPTION', '{DB_POS_COLOR}+1[ENDCOLOR] [ICON_Range] when adjacent to an airborne observer (Observation Balloon, Drone, etc.){LOC_EMPTY_LABEL}', 'en_US'),

('LOC_BR_ABILITY_TWILIGHT_VALOR_ATTACK_BONUS_NAME', 'Twilight Valor (Policy){LOC_EMPTY_LABEL}', 'en_US'),
('LOC_BR_ABILITY_TWILIGHT_VALOR_ATTACK_BONUS_DESCRIPTION', '{DB_POS_COLOR}+5[ICON_Strength][ENDCOLOR], but cannot heal outside home territory{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_BR_ABILITY_INQUISITION_FRIENDLY_TERRITORY_BONUS_NAME', 'Inquisition (Policy){LOC_EMPTY_LABEL}', 'en_US'),
('LOC_BR_ABILITY_INQUISITION_FRIENDLY_TERRITORY_BONUS_DESCRIPTION', '+15[ICON_Religion] in home territory{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_BR_ABILITY_RECEIVE_BOMBARD_STRENGTH_BUFF_NAME', 'Precision Bombardment{LOC_EMPTY_LABEL}', 'en_US'),										-- always?
('LOC_BR_ABILITY_RECEIVE_BOMBARD_STRENGTH_BUFF_DESCRIPTION', '{DB_POS_COLOR}+5[ENDCOLOR][ICON_Bombard] when adjacent to a Drone{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_BR_ABILITY_OLIGARCHY_LEGACY_MELEE_BUFF_NAME', 'Oligarchic Legacy{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_BR_ABILITY_OLIGARCHY_LEGACY_MELEE_BUFF_DESCRIPTION', '{DB_POS_COLOR}+4[ENDCOLOR][ICON_Strength]{LOC_BR_LABEL}', 'en_US'),
('LOC_BR_ABILITY_THEOCRACY_LEGACY_RELIGIOUS_BUFF_NAME', 'Theocratic Legacy{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_BR_ABILITY_THEOCRACY_LEGACY_RELIGIOUS_BUFF_DESCRIPTION', '{DB_POS_COLOR}+5[ENDCOLOR][ICON_Religion]{LOC_BR_LABEL}', 'en_US'),
('LOC_BR_ABILITY_FASCISM_LEGACY_ATTACK_BUFF_NAME', 'Fascist Legacy{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_BR_ABILITY_FASCISM_LEGACY_ATTACK_BUFF_DESCRIPTION', '{DB_POS_COLOR}+5[ENDCOLOR][ICON_Strength]{LOC_BR_LABEL}', 'en_US'),
('LOC_BR_ABILITY_TOQUI_COMBAT_BUFF_VS_GOLDEN_AGE_NAME', 'Toqui{LOC_BR_LABEL}', 'en_US'),
('LOC_BR_ABILITY_UNIT_AUTO_VETERANCY_NAME', 'Named{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_BR_ABILITY_UNIT_AUTO_VETERANCY_DESCRIPTION', 'Can be named immediately{LOC_BR_LABEL}', 'en_US'),

('LOC_BR_ABILITY_DIGITAL_DEMOCRACY_DEBUFF_NAME', 'Digital Democracy{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_BR_ABILITY_DIGITAL_DEMOCRACY_DEBUFF_DESCRIPTION', '{DB_NEG_COLOR}-3[ENDCOLOR][ICON_Strength]{LOC_BR_LABEL}', 'en_US'),
('LOC_BR_ABILITY_GLOBAL_COALITION_FRIENDLY_TERRITORY_NAME', 'Global Coalition{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_BR_ABILITY_GLOBAL_COALITION_FRIENDLY_TERRITORY_DESCRIPTION', '{DB_POS_COLOR}+7[ENDCOLOR][ICON_Strength] in home territory{LOC_BR_LABEL}', 'en_US'),

('LOC_BR_ABILITY_AUTO_SIEGE_NAME', 'Auto-Siege{LOC_BR_LABEL}', 'en_US'),
('LOC_BR_ABILITY_HEAL_ON_VICTORY_NAME', 'Heal on Victory{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_BR_ABILITY_HEAL_ON_VICTORY_DESCRIPTION', '{DB_POS_COLOR}+30?[ENDCOLOR] Health for kills{LOC_BR_LABEL}', 'en_US'),


-- missing / changed for clarity
--	standard units
('LOC_ABILITY_AIR_BOMBER_ATTACK_UNIT_DEBUFF_DESCRIPTION', '{DB_NEG_COLOR}-17[ENDCOLOR][ICON_Bombard] vs units{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_AIR_BOMBER_ATTACK_UNIT_DEBUFF_NAME', 'Bomber{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_AIR_FIGHTER_ATTACK_DISTRICT_DEBUFF_DESCRIPTION', '{DB_NEG_COLOR}-17[ENDCOLOR][ICON_Ranged] vs cities & encampments{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_AIR_FIGHTER_ATTACK_DISTRICT_DEBUFF_NAME', 'Fighter{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_ANTI_AIR_COVER_DESCRIPTION', 'Provides air defense for adjacent tiles{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_ANTI_AIR_COVER_NAME', 'Anti-Air Cover{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_ANTI_CAVALRY_DESCRIPTION', '{DB_POS_COLOR}+10[ENDCOLOR][ICON_Strength] vs cavalry units{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_ANTI_CAVALRY_NAME', 'Anti-Cavalry{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_ANTI_SPEAR_DESCRIPTION', '{DB_POS_COLOR}+5[ENDCOLOR][ICON_STRENGTH] vs anti-cavalry units{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_ANTI_SPEAR_NAME', 'Anti-Spear{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_ARCHAEOLOGIST_ENTER_FOREIGN_LANDS_DESCRIPTION', 'Ignores closed borders{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_ARCHAEOLOGIST_ENTER_FOREIGN_LANDS_NAME', 'Borderless{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_BOMBARD_ATTACK_UNIT_DEBUFF_DESCRIPTION', '{DB_NEG_COLOR}-17[ENDCOLOR][ICON_Bombard] vs land units{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_BOMBARD_ATTACK_UNIT_DEBUFF_NAME', 'Land Bombard Unit{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_COASTAL_RAID_DESCRIPTION', 'Can capture civilian units and pillage improvements/districts adjacent to coastal waters{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_COASTAL_RAID_NAME', 'Coastal Raid{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_DRONE_GRANT_SIEGE_BONUS_DESCRIPTION', '{DB_POS_COLOR}+5[ENDCOLOR][ICON_Bombard] to adjacent land siege units{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_DRONE_GRANT_SIEGE_BONUS_NAME', 'Precision Bombardment{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_FRIENDLY_TERRITORY_RELIGIOUS_DESCRIPTION', '{DB_POS_COLOR}+35[ENDCOLOR][ICON_Religion] in home territory{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_FRIENDLY_TERRITORY_RELIGIOUS_NAME', 'Inquisitor{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_GRANT_MOVEMENT_BONUS_DESCRIPTION', '{DB_POS_COLOR}+1[ENDCOLOR][ICON_Movement] to adjacent units{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_GRANT_MOVEMENT_BONUS_NAME', 'Convoy{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_HEAVY_CHARIOT_DESCRIPTION', '{DB_POS_COLOR}+1[ENDCOLOR][ICON_Movement] when starting on a flat tile{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_HEAVY_CHARIOT_NAME', 'Wheeled{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_IGNORE_CROSSING_RIVERS_COST_DESCRIPTION', 'Ignores river movement costs{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_IGNORE_CROSSING_RIVERS_COST_NAME', 'Airborne Movement{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_IGNORE_TERRAIN_COST_DESCRIPTION', 'Ignores terrain movement costs (hills, woods, rainforests, marshes, etc.){LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_IGNORE_TERRAIN_COST_NAME', 'Airborne Movement{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_IGNORE_ZOC_DESCRIPTION', 'Ignores zones of control{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_IGNORE_ZOC_NAME', 'Elusive{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_LIGHT_CHARIOT_DESCRIPTION', '{DB_POS_COLOR}+2[ENDCOLOR][ICON_Movement] when starting on a flat tile{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_LIGHT_CHARIOT_NAME', 'Wheeled{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_MEDIC_HEAL_DESCRIPTION', '{DB_POS_COLOR}+20[ENDCOLOR] healing to adjacent units{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_MEDIC_HEAL_NAME', 'Medic{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_NO_FOREIGN_SPREAD_DESCRIPTION', 'Cannot spread to foreign cities{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_NO_FOREIGN_SPREAD_NAME', 'Inquisitor{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_NO_MOVE_AND_SHOOT_DESCRIPTION', 'Cannot attack after moving{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_NO_MOVE_AND_SHOOT_NAME', 'Setup Required{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_OBSERVATION_STRENGTH_BONUS_DESCRIPTION', '{DB_POS_COLOR}+1[ENDCOLOR][ICON_Range] for adjacent land bombard units{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_OBSERVATION_STRENGTH_BONUS_NAME', 'Airborne Observation{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_PARADROP_DESCRIPTION', 'Can paradrop{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_PARADROP_NAME', 'Paratrooper{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_RANGED_ATTACK_DISTRICT_DEBUFF_DESCRIPTION', '{DB_NEG_COLOR}-17[ENDCOLOR][ICON_Ranged] vs cities, encampments, & naval units{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_RANGED_ATTACK_DISTRICT_DEBUFF_NAME', 'Ranged Land Unit{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_RELIGIOUS_CANNOT_ATTACK_DESCRIPTION', 'Cannot attack{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_RELIGIOUS_CANNOT_ATTACK_NAME', 'Peaceful{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_RELIGIOUS_ENTER_FOREIGN_LANDS_DESCRIPTION', 'Ignores closed borders{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_RELIGIOUS_ENTER_FOREIGN_LANDS_NAME', 'Borderless{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_ROCK_BAND_ENTER_FOREIGN_LANDS_DESCRIPTION', 'Ignores closed borders{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_ROCK_BAND_ENTER_FOREIGN_LANDS_NAME', 'Borderless{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_SEE_HIDDEN_DESCRIPTION', 'Reveals stealth units within sight range{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_SEE_HIDDEN_NAME', 'Spotter{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_STEALTH_DESCRIPTION', 'Remains hidden from units more than 1 tile away{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_STEALTH_NAME', 'Stealth{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_UNIT_FIGHT_WHILE_EMBARKED_DESCRIPTION', 'Can attack while embarked{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_UNIT_FIGHT_WHILE_EMBARKED_NAME', 'Embarked Combat{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_UNIT_WMD_RESISTANCE_DESCRIPTION', 'Resistant to WMDs{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_UNIT_WMD_RESISTANCE_NAME', 'Nuke-Proof{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_UNOBSTRUCTED_VIEW_DESCRIPTION', 'Sight ignores terrain (mountains, hills, woods, rainforests, etc.){LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_UNOBSTRUCTED_VIEW_NAME', 'Unobstructed View{LOC_EMPTY_LABEL}', 'en_US'),





-- missing / changed for clarity
--	unique units
-- ('LOC_ABILITY_BERSERKER_MOVEMENT_DESCRIPTION', '+2[ICON_Movement] when starting in enemy territory{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_BERSERKER_MOVEMENT_NAME', '+2[ICON_Movement] when starting in enemy territory{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_BERSERKER_RAGE_DESCRIPTION', '+10[ICON_Strength] attack{LOC_EMPTY_LABEL}[NEWLINE][ICON_Bullet]-5[ICON_Strength] defense{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_BERSERKER_RAGE_NAME', '+10[ICON_Strength] attack{LOC_EMPTY_LABEL}[NEWLINE][ICON_Bullet]-5[ICON_Strength] defense{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_BIREME_PROTECT_TRADER_DESCRIPTION', 'Protects nearby naval traders from being plundered{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_BIREME_PROTECT_TRADER_NAME', 'Protects nearby naval traders from being plundered{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_BLACK_ARMY_DESCRIPTION', '+3[ICON_Strength] per adjacent levied unit{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_BLACK_ARMY_NAME', '+3[ICON_Strength] per adjacent levied unit{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_CAPTIVE_WORKERS_DESCRIPTION', 'Can capture builders from defeated military units{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_CAPTIVE_WORKERS_NAME', 'Can capture builders from defeated military units{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_CAROLEAN_DESCRIPTION', '+3[ICON_Strength] per unused [ICON_Movement]{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_CAROLEAN_NAME', '+3[ICON_Strength] per unused [ICON_Movement]{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_CONQUISTADOR_DESCRIPTION', '+10[ICON_Strength] when next to a religious unit{LOC_EMPTY_LABEL}[NEWLINE][ICON_Bullet]Converts cities to religion on capture{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_CONQUISTADOR_NAME', '+10[ICON_Strength] when next to a religious unit{LOC_EMPTY_LABEL}[NEWLINE][ICON_Bullet]Converts cities to religion on capture{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_CORBACI_DESCRIPTION', 'Free promotion{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_CORBACI_NAME', 'Free promotion{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_CORSAIR_DESCRIPTION', 'Coastal raids don''t cost any movement{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_CORSAIR_NAME', 'Coastal raids don''t cost any movement{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_COSSACK_DESCRIPTION', 'Can move after attacking{LOC_EMPTY_LABEL}[NEWLINE][ICON_Bullet]+5[ICON_Strength] in or adjacent to home territory{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_COSSACK_NAME', 'Can move after attacking{LOC_EMPTY_LABEL}[NEWLINE][ICON_Bullet]+5[ICON_Strength] in or adjacent to home territory{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_CREE_OKIHTCITAW_DESCRIPTION', 'Free promotion{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_CREE_OKIHTCITAW_NAME', 'Okihtcitaw{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_DIGGER_DESCRIPTION', '+10[ICON_Strength] on coastal tiles{LOC_EMPTY_LABEL}[NEWLINE][ICON_Bullet]+5[ICON_Strength] outside home territory{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_DIGGER_NAME', '+10[ICON_Strength] on coastal tiles{LOC_EMPTY_LABEL}[NEWLINE][ICON_Bullet]+5[ICON_Strength] outside home territory{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_DROMON_DESCRIPTION', '+10[ICON_Strength] vs units{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_DROMON_NAME', '+10[ICON_Strength] vs units{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_DUTCH_ZEVEN_PROVINCIEN_DESCRIPTION', '+7[ICON_Strength] vs cities & encampments{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_DUTCH_ZEVEN_PROVINCIEN_NAME', 'De Zeven Provincien{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_ETHIOPIAN_OROMO_CAVALRY_DESCRIPTION', 'No hill movement costs{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_ETHIOPIAN_OROMO_CAVALRY_NAME', 'No hill movement costs{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_GAESATAE_DESCRIPTION', '+10[ICON_Strength] vs units with higher base combat strength{LOC_EMPTY_LABEL}[NEWLINE][ICON_Bullet]+5[ICON_Strength] vs cities & encampments{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_GAESATAE_NAME', '+10[ICON_Strength] vs units with higher base combat strength{LOC_EMPTY_LABEL}[NEWLINE][ICON_Bullet]+5[ICON_Strength] vs cities & encampments{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_GARDE_DESCRIPTION', '+10[ICON_Strength] on home continent{LOC_EMPTY_LABEL}[NEWLINE][ICON_Bullet]+10[ICON_GreatGeneral] Great General points for kills{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_GARDE_NAME', '+10[ICON_Strength] on home continent{LOC_EMPTY_LABEL}[NEWLINE][ICON_Bullet]+10[ICON_GreatGeneral] Great General points for kills{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_GEORGIAN_KHEVSURETI_DESCRIPTION', '+7[ICON_Strength] on hills{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_GEORGIAN_KHEVSURETI_NAME', 'Khevsureti{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_HETAIROI_DESCRIPTION', '+5[ICON_Strength] next to a Great General{LOC_EMPTY_LABEL}[NEWLINE][ICON_Bullet]+5[ICON_GreatGeneral] Great General points for kills{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_HETAIROI_NAME', 'Hetairoi{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_HOPLITE_DESCRIPTION', '+10[ICON_Strength] when next to another Hoplite{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_HOPLITE_NAME', '+10[ICON_Strength] when next to another Hoplite{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_HULCHE_DESCRIPTION', '+5[ICON_Strength] vs damaged units{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_HULCHE_NAME', 'Hulche{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_HUSZAR_DESCRIPTION', '+3[ICON_STRENGTH] per alliance{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_HUSZAR_NAME', '+3[ICON_STRENGTH] per alliance{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_HYPASPIST_DESCRIPTION', '+5[ICON_Strength] vs cities & encampments{LOC_EMPTY_LABEL}[NEWLINE][ICON_Bullet]+50% support{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_HYPASPIST_NAME', 'Hypaspist{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_JONG_DESCRIPTION', '+5[ICON_Strength] when in an escort formation{LOC_EMPTY_LABEL}[NEWLINE][ICON_Bullet]Movement applies to units in an escort formation{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_JONG_NAME', 'Jong{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_LLANERO_ADJACENCY_STRENGTH_DESCRIPTION', '+2[ICON_Strength] from each adjacent Llanero{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_LLANERO_ADJACENCY_STRENGTH_NAME', 'Llanero{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_LONGSHIP_MOVEMENT_DESCRIPTION', '+1[ICON_Movement] on coastal tiles{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_LONGSHIP_MOVEMENT_NAME', '+1[ICON_Movement] on coastal tiles{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_MAMLUK_DESCRIPTION', 'Heals after movement and combat{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_MAMLUK_NAME', 'Heals after movement and combat{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_MANDEKALU_DESCRIPTION', 'Protects nearby land traders from beings plundered{LOC_EMPTY_LABEL}[NEWLINE][ICON_Bullet]+[ICON_GOLD] For Kills{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_MANDEKALU_NAME', 'Protects nearby land traders from beings plundered{LOC_EMPTY_LABEL}[NEWLINE][ICON_Bullet]+[ICON_GOLD] For Kills{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_MAPUCHE_MALON_RAIDER_DESCRIPTION', '+5[ICON_Strength] within 4 tiles home territory{LOC_EMPTY_LABEL}[NEWLINE][ICON_Bullet]Pillaging costs 1 [ICON_Movement]{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_MAPUCHE_MALON_RAIDER_NAME', 'Malon Raider{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_MONGOLIAN_KESHIG_DESCRIPTION', 'Movement applies to units in an escort formation{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_MONGOLIAN_KESHIG_NAME', 'Keshig{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_MOUNTIE_DESCRIPTION', 'Can create a national park{LOC_EMPTY_LABEL}[NEWLINE][ICON_Bullet]+5[ICON_Strength] within 2 tiles of a national park{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_MOUNTIE_NAME', 'Can create a national park{LOC_EMPTY_LABEL}[NEWLINE][ICON_Bullet]+5[ICON_Strength] within 2 tiles of a national park{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_MUSTANG_DESCRIPTION', '+5[ICON_Strength] vs fighters{LOC_EMPTY_LABEL}[NEWLINE][ICON_Bullet]+50% xp{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_MUSTANG_NAME', '+5[ICON_Strength] vs fighters{LOC_EMPTY_LABEL}[NEWLINE][ICON_Bullet]+50% xp{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_NAGAO_DESCRIPTION', '+10[ICON_Strength] defense vs ranged units{LOC_EMPTY_LABEL}[NEWLINE][ICON_Bullet]Can see through woods/rainforests{LOC_EMPTY_LABEL}[NEWLINE][ICON_Bullet]No woods/rainforest movement costs{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_NAGAO_NAME', '+10[ICON_Strength] defense vs ranged units{LOC_EMPTY_LABEL}[NEWLINE][ICON_Bullet]Can see through woods/rainforests{LOC_EMPTY_LABEL}[NEWLINE][ICON_Bullet]No woods/rainforest movement costs{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_NAU_DESCRIPTION', 'Free Promotion{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_NAU_NAME', 'Free Promotion{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_PRIZE_SHIPS_DESCRIPTION', 'Can capture defeated naval units{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_PRIZE_SHIPS_NAME', 'Can capture defeated naval units{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_PUSHBACK', 'Impel{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_PUSHBACK_DESCRIPTION', 'Pushes back defending units{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_REDCOAT_DESCRIPTION', '+10[ICON_Strength] on foreign continents{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_REDCOAT_NAME', '+10[ICON_Strength] on foreign continents{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_ROMAN_LEGION_BUILD_DESCRIPTION', 'Can build a Roman fort{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_ROMAN_LEGION_BUILD_NAME', 'Legion{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_ROUGH_RIDER_DESCRIPTION', '+10[ICON_Strength] on hills{LOC_EMPTY_LABEL}[NEWLINE][ICON_Bullet]+[ICON_Culture] for kills on home continent{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_ROUGH_RIDER_NAME', '+10[ICON_Strength] on hills{LOC_EMPTY_LABEL}[NEWLINE][ICON_Bullet]+[ICON_Culture] for kills on home continent{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_SABUM_KIBITTUM_ANTI_CAVALRY_DESCRIPTION', '+17[ICON_Strength] vs cavalry{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_SABUM_KIBITTUM_ANTI_CAVALRY_NAME', '+17[ICON_Strength] vs cavalry{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_SAMURAI_DESCRIPTION', 'No [ICON_Strength] loss for being damaged{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_SAMURAI_NAME', 'No [ICON_Strength] loss for being damaged{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_SCOTTISH_HIGHLANDER_DESCRIPTION', '+5[ICON_Strength] on hills and in woods{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_SCOTTISH_HIGHLANDER_NAME', 'Highlander{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_TAGMA_DESCRIPTION', 'Nearby land units get +4[ICON_Strength] or +4[ICON_RELIGION]{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_TAGMA_NAME', 'Nearby land units get +4[ICON_Strength] or +4[ICON_RELIGION]{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_TAGMA_NONRELIGIOUS_COMBAT_DESCRIPTION', '+4[ICON_Strength] from nearby Tagma{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_TAGMA_NONRELIGIOUS_COMBAT_NAME', '+4[ICON_Strength] from nearby Tagma{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_TAGMA_RELIGIOUS_COMBAT_DESCRIPTION', '+4[ICON_RELIGION] from nearby Tagma{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_TAGMA_RELIGIOUS_COMBAT_DESCRIPTION', '+4[ICON_RELIGION] from nearby Tagma{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_TOA_DESCRIPTION', '-5[ICON_STRENGTH] to adjacent enemy units{LOC_EMPTY_LABEL}[NEWLINE][ICON_Bullet]Can build a Pa{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_TOA_NAME', 'Toa{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_UBOAT_DESCRIPTION', '+10[ICON_Strength] on ocean tiles{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_UBOAT_NAME', '+10[ICON_Strength] on ocean tiles{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_VARU_DESCRIPTION', '-5[ICON_STRENGTH] to adjacent enemy units{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_VARU_NAME', '-5[ICON_STRENGTH] to adjacent enemy units{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_VOI_CHIEN_DESCRIPTION', 'Can move after attacking{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_VOI_CHIEN_NAME', 'Can move after attacking{LOC_EMPTY_LABEL}', 'en_US'),
-- ('LOC_ABILITY_ZULU_IMPI_DESCRIPTION', '+100% flanking{LOC_EMPTY_LABEL}[NEWLINE][ICON_Bullet]+25% xp{LOC_EMPTY_LABEL}', 'en_US'),
('LOC_ABILITY_ZULU_IMPI_NAME', 'Impi{LOC_EMPTY_LABEL}', 'en_US'),


('', '', 'en_US') ;