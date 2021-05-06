-- ('', '', 'en_US'),

INSERT OR REPLACE INTO LocalizedText 
(Tag, Text, Language) VALUES

('LOC_GREAT_PERSON_INDIVIDUAL_TRUNG_TRAC_PERMANENT_ACTIVE', 'Accumulate 25% less war weariness than usual.{LOC_BR_LABEL}', 'en_US')
;

UPDATE LocalizedText SET Text = REPLACE(Text, '[ICON_Capital] Capital city', 'empire') WHERE Tag = 'LOC_GREATPERSON_GRANT_PLOT_RESOURCE' AND Language = 'en_US' ;
UPDATE LocalizedText SET Text = REPLACE(Text, '[ICON_Capital] Capital city', 'empire') WHERE Tag = 'LOC_GREATPERSON_FERDINAND_MAGELLAN_ACTIVE' AND Language = 'en_US' ;
