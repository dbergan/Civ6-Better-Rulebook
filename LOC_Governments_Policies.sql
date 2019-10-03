-- ('', '', 'en_US'),

INSERT OR REPLACE INTO LocalizedText 
(Tag, Text, Language) VALUES

-- Fascism
('LOC_PEDIA_GOVERNMENTS_PAGEGROUP_GOVERNMENTS_NAME', 'Governments{LOC_BR_LABEL}', 'en_US'),
('LOC_ABILITY_FASCISM_ATTACK_BUFF_DESCRIPTION', '+5 [ICON_Strength]Combat Strength, [ICON_Ranged] Ranged Strength, or [ICON_Bombard] Bombard Strength when attacking with the Fascism government.{LOC_BR_LABEL}', 'en_US'),
('LOC_GOVT_INHERENT_BONUS_FASCISM', '+5 [ICON_Strength]Combat Strength, [ICON_Ranged] Ranged Strength, or [ICON_Bombard] Bombard Strength when attacking.{LOC_BR_LABEL}', 'en_US'),
('LOC_GOVT_INHERENT_BONUS_FASCISM_XP1', '+5 [ICON_Strength]Combat Strength, [ICON_Ranged] Ranged Strength, or [ICON_Bombard] Bombard Strength when attacking.  War Weariness reduced by 20%.{LOC_BR_LABEL}', 'en_US'),

-- Finest Hour
('LOC_PEDIA_GOVERNMENTS_PAGEGROUP_WILDCARD_POLICIES_NAME', 'Wildcard Policies{LOC_BR_LABEL}', 'en_US'),
('LOC_POLICY_FINEST_HOUR_DESCRIPTION_XP2', '+5 [ICON_Strength]Combat Strength, [ICON_Ranged] Ranged Strength, or [ICON_Bombard] Bombard Strength when attacking tiles inside their home territory.[NEWLINE]+5 [ICON_Strength]Combat Strength when defending on tiles inside their home territory.[NEWLINE]Does not apply to cities and encampments.{LOC_BR_LABEL}', 'en_US'), -- GS description

-- Bastions (combat preview was missing)
('LOC_POLICY_BASTIONS_DESCRIPTION', '+6 City [ICON_Strength] Defense Strength. +10 City [ICON_Ranged] Ranged Strength. (5 of it is added directly to the city''s "Base Strength" number, with no mention. The other 5 shows up as a standard modifier. With{LOC_BR_LABEL} both are explained in the Combat Preview.).{LOC_BR_LABEL}', 'en_US')

;
