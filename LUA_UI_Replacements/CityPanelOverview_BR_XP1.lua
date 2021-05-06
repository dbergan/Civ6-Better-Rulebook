include('CityPanelOverview_Expansion1')

PRIOR_ViewPanelCitizensGrowth = ViewPanelCitizensGrowth
-- G:\SteamLibrary\steamapps\common\Sid Meier's Civilization VI\DLC\Expansion2\UI\Replacements\ResearchChooser_Expansion1.lua  [line 38]
function ViewPanelCitizensGrowth( data:table )
	data.OccupationMultiplier = 1
	PRIOR_ViewPanelCitizensGrowth(data)
end
