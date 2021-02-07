include "CivicsTree_Expansion2"

PRIOR_OnFilterClicked = OnFilterClicked
function OnFilterClicked(filter)
	if GameConfiguration.GetValue("GAMEMODE_TREE_RANDOMIZER") == nil or GameConfiguration.GetValue("GAMEMODE_TREE_RANDOMIZER") == false then
		PRIOR_OnFilterClicked(filter)
	end
end