INSERT OR REPLACE INTO Parameters (ParameterId, Name, Description, 
Domain, DefaultValue, ConfigurationGroup, ConfigurationId, GroupId, Visible, ReadOnly,
SupportsSinglePlayer, SupportsLANMultiplayer, SupportsInternetMultiplayer, SupportsHotSeat, SupportsPlayByCloud,
ChangeableAfterGameStart, ChangeableAfterPlayByCloudMatchCreate, SortIndex) VALUES 

('BR_UNOFFICIAL_PATCH', 'LOC_BR_UNOFFICIAL_PATCH_NAME', 'LOC_BR_UNOFFICIAL_PATCH_DESC', 
'bool', 1, 'Game', 'BR_UNOFFICIAL_PATCH', 'AdvancedOptions', 1, 0, 
1, 1, 1, 1, 1, 
0, 0, 290),

('BR_SIEGE_UNITS_NO_EXTRA_MOVEMENT', 'LOC_BR_SIEGE_UNITS_NO_EXTRA_MOVEMENT_NAME', 'LOC_BR_SIEGE_UNITS_NO_EXTRA_MOVEMENT_DESC', 
'bool', 1, 'Game', 'BR_SIEGE_UNITS_NO_EXTRA_MOVEMENT', 'AdvancedOptions', 1, 0, 
1, 1, 1, 1, 1, 
0, 0, 291)

;