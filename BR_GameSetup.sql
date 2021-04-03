INSERT OR REPLACE INTO Parameters (ParameterId, Name, Description, 
Domain, DefaultValue, ConfigurationGroup, ConfigurationId, GroupId, Visible, ReadOnly,
SupportsSinglePlayer, SupportsLANMultiplayer, SupportsInternetMultiplayer, SupportsHotSeat, SupportsPlayByCloud,
ChangeableAfterGameStart, ChangeableAfterPlayByCloudMatchCreate, SortIndex) VALUES 

('BR_HEADER', 'LOC_BR_HEADER_NAME', 'LOC_BR_HEADER_DESC', 
'EmptyDomain', 1, 'Game', 'BR_HEADER', 'AdvancedOptions', 1, 0, 
1, 1, 1, 1, 1, 
0, 0, 290),

('BR_UNOFFICIAL_PATCH', 'LOC_BR_UNOFFICIAL_PATCH_NAME', 'LOC_BR_UNOFFICIAL_PATCH_DESC', 
'bool', 1, 'Game', 'BR_UNOFFICIAL_PATCH', 'AdvancedOptions', 1, 0, 
1, 1, 1, 1, 1, 
0, 0, 291),

('BR_SIEGE_UNITS_NO_EXTRA_MOVEMENT', 'LOC_BR_SIEGE_UNITS_NO_EXTRA_MOVEMENT_NAME', 'LOC_BR_SIEGE_UNITS_NO_EXTRA_MOVEMENT_DESC', 
'bool', 1, 'Game', 'BR_SIEGE_UNITS_NO_EXTRA_MOVEMENT', 'AdvancedOptions', 1, 0, 
1, 1, 1, 1, 1, 
0, 0, 292),

('BR_NO_MORE_STIRRINGS', 'LOC_BR_NO_MORE_STIRRINGS_NAME', 'LOC_BR_NO_MORE_STIRRINGS_DESC', 
'bool', 1, 'Game', 'BR_NO_MORE_STIRRINGS', 'AdvancedOptions', 1, 0, 
1, 1, 1, 1, 1, 
0, 0, 293),



('DB_FOOTER', 'LOC_DB_FOOTER_NAME', 'LOC_DB_FOOTER_DESC', 
'EmptyDomain', 1, 'Game', 'DB_FOOTER', 'AdvancedOptions', 1, 0, 
1, 1, 1, 1, 1, 
0, 0, 380) ;

INSERT OR REPLACE INTO DomainRanges (Domain, MinimumValue, MaximumValue) VALUES
('EmptyDomain', 0, 1) ;
