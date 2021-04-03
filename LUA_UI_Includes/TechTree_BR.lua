-- DB - remove the tech filter when playing in the random tech tree mode [ALL]
PRIOR_OnFilterClicked = OnFilterClicked
function OnFilterClicked(filter)
	if not GameConfiguration.GetValue("GAMEMODE_TREE_RANDOMIZER") then
		PRIOR_OnFilterClicked(filter)
	end
end
-- /DB