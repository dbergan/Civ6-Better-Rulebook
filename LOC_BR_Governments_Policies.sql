-- ('', '', 'en_US'),

INSERT OR REPLACE INTO LocalizedText 
(Tag, Text, Language) VALUES

-- GOVERNMENTS

-- Fascism
('LOC_PEDIA_GOVERNMENTS_PAGEGROUP_GOVERNMENTS_NAME', 'Governments{LOC_BR_LABEL}', 'en_US'),
('LOC_ABILITY_FASCISM_ATTACK_BUFF_DESCRIPTION', '+5 [ICON_Strength]Combat Strength, [ICON_Ranged] Ranged Strength, or [ICON_Bombard] Bombard Strength when attacking with the Fascism government.{LOC_BR_LABEL}', 'en_US'),
('LOC_GOVT_INHERENT_BONUS_FASCISM', '+5 [ICON_Strength]Combat Strength, [ICON_Ranged] Ranged Strength, or [ICON_Bombard] Bombard Strength when attacking.{LOC_BR_LABEL}', 'en_US'),
('LOC_GOVT_INHERENT_BONUS_FASCISM_XP1', '+5 [ICON_Strength]Combat Strength, [ICON_Ranged] Ranged Strength, or [ICON_Bombard] Bombard Strength when attacking.  War Weariness reduced by 20%.{LOC_BR_LABEL}', 'en_US'),

-- Finest Hour
('LOC_PEDIA_GOVERNMENTS_PAGEGROUP_WILDCARD_POLICIES_NAME', 'Wildcard Policies{LOC_BR_LABEL}', 'en_US'),
('LOC_POLICY_FINEST_HOUR_DESCRIPTION_XP2', '+5 [ICON_Strength]Combat Strength, [ICON_Ranged] Ranged Strength, or [ICON_Bombard] Bombard Strength when either: (a) attacking a tile inside home territory or (b) attacking from a tile adjacent to home territory.[NEWLINE]+5 [ICON_Strength]Combat Strength when defending on a tile inside or adjacent to home territory.[NEWLINE]Does not apply to cities and encampments.{LOC_BR_LABEL}', 'en_US'), -- GS description


-- POLICIES

-- After Action Reports (text says 25%, but it's actually 50%)
('LOC_POLICY_AFTER_ACTION_REPORTS_DESCRIPTION', 'All units gain +50% combat experience.{LOC_BR_LABEL}', 'en_US'),


-- Bastions (combat preview was missing)
('LOC_POLICY_BASTIONS_DESCRIPTION', '+6 City [ICON_Strength] Defense Strength. +10 City [ICON_Ranged] Ranged Strength. (5 of it is added directly to the city''s "Base Strength" number, with no mention. The other 5 shows up as a standard modifier. With{LOC_BR_LABEL} both are explained in the Combat Preview.).{LOC_BR_LABEL}', 'en_US'),

-- Limes
('LOC_POLICY_LIMES_DESCRIPTION', '+100% [ICON_Production] Production toward walls.{LOC_BR_LABEL}', 'en_US')
;
