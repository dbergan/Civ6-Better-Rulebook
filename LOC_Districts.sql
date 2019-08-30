-- ('', '', 'en_US'),

INSERT OR REPLACE INTO LocalizedText 
(Tag, Text, Language) VALUES

-- City Combat Previews
('LOC_COMBAT_PREVIEW_LESS_EFFECTIVE_VS_WALLS_DESC', '-{1_Value} Less effective vs cities and encampments{LOC_BR_LABEL}', 'en_US'), -- when archers, etc attack
('LOC_COMBAT_PREVIEW_DAMAGED_DISTRICT_DESC', '[COLOR_RED]{1_Value}[ENDCOLOR] Damage to city/encampment{LOC_BR_LABEL}', 'en_US'),

-- Canal
('LOC_DISTRICT_CANAL_DESCRIPTION', 'A district built on flat land to connect two bodies of water, or a body of water to a City Center. Further details:[NEWLINE][ICON_Bullet]May either go straight through the tile or bend by 60 degrees[NEWLINE][ICON_Bullet]Must have a full land tile on each side of the waterway they create; note that ice does not count as a land tile here[NEWLINE][ICON_Bullet]Cities may have more than one canal[NEWLINE][ICON_Bullet]Three-way canal junctures are not allowed[NEWLINE][ICON_Bullet]Military Engineers can spend a charge to complete 20% of a Canal''s production[NEWLINE][ICON_Bullet][ICON_TradeRoute] Trade Routes traveling through a canal can multiply the [ICON_Gold] Gold they get from districts at their destination{LOC_BR_LABEL}', 'en_US')

;
