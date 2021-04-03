-- ('', '', 'en_US'),

INSERT OR REPLACE INTO LocalizedText 
(Tag, Text, Language) VALUES
('LOC_BR_LABEL', ' [COLOR:SuzerainDark][BR][ENDCOLOR]', 'en_US'),
('LOC_BR_HEADER', '[ICON_Reports][COLOR:SuzerainDark]BETTER RULEBOOK[ENDCOLOR][ICON_Reports][NEWLINE][NEWLINE]', 'en_US'),
('LOC_OT_HEADER', '[COLOR_Red]ORIGINAL TEXT[ENDCOLOR][NEWLINE][NEWLINE]', 'en_US'),

-- TopPanel: Tourism
('LOC_BR_TOURISM_TOOLTIP_HEADER', '[NEWLINE]---------------------------------------------------[NEWLINE]{LOC_BR_HEADER}', 'en_US'),
('LOC_BR_MY_DOMESTIC_TOURISTS', 'Our Domestic Tourists: {1_Num}', 'en_US'),
('LOC_BR_MY_VISITING_TOURISTS', 'Our Visiting Tourists: {1_Num}', 'en_US'),
('LOC_BR_MY_TRAVELING_TOURISTS', 'Where Our Citizens Are Going', 'en_US'),
('LOC_BR_VISITING_TOURIST_LINE', '[ICON_Bullet]From {1_Civ}: {2_Total} (+{3_PerTurn}/Turn)', 'en_US'),
('LOC_BR_VISITING_TOURIST_LINE_WITH_GOLD', '[ICON_Bullet]From {1_Civ}: {2_Total} (+{3_PerTurn}/Turn, +{4_Gold}[ICON_Gold])', 'en_US'),
('LOC_BR_TRAVELING_TOURIST_LINE', '[ICON_Bullet]To {1_Civ}: {2_Total} (+{3_PerTurn}/Turn)', 'en_US'),
('LOC_BR_TOTAL_LINE', 'Total: {1_Total}', 'en_US'),
('LOC_BR_CULTURE_VICTORY', 'Victory is achieved when a player[NEWLINE]attracts more Visiting Tourists to[NEWLINE]their civilization than any other[NEWLINE]civilization has Domestic Tourists', 'en_US'),

/***** CITY/ENCAMPMENT BANNERS AND FLOATERS *****/
('LOC_CITY_BANNER_GARRISON_DEFENSE_STRENGTH', 'Defense Strength{LOC_BR_LABEL}', 'en_US'),
('LOC_CITY_BANNER_OUTER_DEFENSE_HITPOINTS', 'Wall health{LOC_BR_LABEL}: {1_Health}', 'en_US'),
('LOC_HUD_UNIT_PANEL_WALL_HEALTH_TOOLTIP', 'Wall health{LOC_BR_LABEL}: {1_CurrentHealth}/{2_MaxHealth}', 'en_US'),
('LOC_CITY_BANNER_GARRISON_HITPOINTS', 'City health{LOC_BR_LABEL}: {1_Health}', 'en_US'),
('LOC_CITY_BANNER_DISTRICT_HITPOINTS', 'Encampment health{LOC_BR_LABEL}: {1_Health}', 'en_US'),
('LOC_WORLD_DISTRICT_DEFENSE_DAMAGE_DECREASE_FLOATER', '[COLOR_GREEN]+{1_Num}[ENDCOLOR] Walls', 'en_US'),
('LOC_WORLD_DISTRICT_DEFENSE_DAMAGE_INCREASE_FLOATER', '[COLOR_RED]{1_Num}[ENDCOLOR] Walls', 'en_US'),
('LOC_WORLD_DISTRICT_GARRISON_DAMAGE_DECREASE_FLOATER', '[COLOR_GREEN]+{1_Num}[ENDCOLOR] Health', 'en_US'),
('LOC_WORLD_DISTRICT_GARRISON_DAMAGE_INCREASE_FLOATER', '[COLOR_RED]{1_Num}[ENDCOLOR] Health', 'en_US'),
('LOC_CITY_BANNER_FORTIFICATION_TT', 'City has no walls{LOC_BR_LABEL}', 'en_US')
;


