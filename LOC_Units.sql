-- ('', '', 'en_US'),

INSERT OR REPLACE INTO LocalizedText 
(Tag, Text, Language) VALUES

('LOC_FORMATION_CLASS_SUPPORT_NAME', 'Support{LOC_BR_LABEL}', 'en_US'),
-- Drones don't give strength bonuses, subject to movement costs
('LOC_UNIT_DRONE_DESCRIPTION', 'Atomic era support unit. Adds +1 [ICON_Range] Range to adjacent siege-class units. Subject to embarking and terrain movement costs.[NEWLINE][NEWLINE](The intended strength bonus for Modern era and later siege units does not work, but this is fixed in DB''s Unofficial Patch. The patch also enables drones to ignore terrain movement costs.){LOC_BR_LABEL}', 'en_US'),


('LOC_FORMATION_CLASS_LAND_COMBAT_NAME', 'Land Combat{LOC_BR_LABEL}', 'en_US'),
-- Spec Ops
('LOC_UNIT_SPEC_OPS_DESCRIPTION', 'Atomic Era reconnaissance unit that has a [ICON_Ranged]Ranged Attack and a Priority Target attack. Priority Target attacks are not accurately represented in the combat preview, instead they work like this:[NEWLINE][ICON_Bullet]Are used only against enemy support units[NEWLINE][ICON_Bullet]Can target a support unit that''s sharing a tile with a front-line combat unit[NEWLINE][ICON_Bullet]Does exactly 65 damage its target, no matter the modifiers (including Corp/Army)[NEWLINE][ICON_Bullet]The Spec Op takes no damage[NEWLINE][NEWLINE]Spec Ops also have a Paradrop ability that allows them to drop onto distant tiles. It works like this:[NEWLINE][ICON_Bullet]Must be used from friendly territory[NEWLINE][ICON_Bullet]Must drop onto land up to 7 tiles away (12 when starting from Aerodrome or Airstrip)[NEWLINE][ICON_Bullet]The Spec Ops must not have moved this turn. (Technically, the check is on whether the numerator is greater than or equal to the denominator of its movement.){LOC_BR_LABEL}', 'en_US')

;
