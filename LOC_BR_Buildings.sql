-- ('', '', 'en_US'),

INSERT OR REPLACE INTO LocalizedText 
(Tag, Text, Language) VALUES

-- Water Mill (default description says they need farms, but they do not)
('LOC_BUILDING_WATER_MILL_DESCRIPTION', '+1 [ICON_Food] Food on Rice, Wheat, and Maize tiles. City must be adjacent to a River.{LOC_BR_LABEL}', 'en_US')

;

UPDATE LocalizedText SET Text = REPLACE(Text, 'Outer defenses', 'Walls') ;
UPDATE LocalizedText SET Text = REPLACE(Text, 'outer defenses', 'walls') ;
UPDATE LocalizedText SET Text = REPLACE(Text, 'Outer defense', 'Wall health') ;
UPDATE LocalizedText SET Text = REPLACE(Text, 'outer defense', 'wall') ;