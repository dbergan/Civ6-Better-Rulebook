include('CityPanel')
PRIOR_ViewMain = ViewMain
function ViewMain(data:table)
	PRIOR_ViewMain(data)

	if data.Occupied and data.TurnsUntilGrowth > 0 then
		Controls.GrowthLabel:SetColorByName("StatGoodCS");
		Controls.GrowthLabel:SetText( Locale.ToUpper( Locale.Lookup("LOC_HUD_CITY_TURNS_UNTIL_GROWTH",data.TurnsUntilGrowth)) );		
	end
end
