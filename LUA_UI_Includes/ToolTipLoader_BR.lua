-- DB - show tech and civic progress in tech/civic tree tooltips [BR]
-- function copied from G:\SteamLibrary\steamapps\common\Sid Meier's Civilization VI\Base\Assets\UI\ToolTipHelper.lua
-- ToolTipHelper.lua uses a wildcard include [include ("ToolTipLoader_", true);] so it should automatically include this
--   Note that the include has "Loader" not "Helper"

ToolTipHelper.GetCivicToolTip = function(civicType, playerId)
	-- ToolTip Format
	-- <Name> <Cost>
	-- <Static Description>
	-- <Unlocks>
	-- 	<UnlocksBuildings>
	-- 	<UnlocksImprovements>
	-- 	<UnlocksUnits>
	-- </Unlocks>
	
	-- Gather up all the information
	local civic = GameInfo.Civics[civicType];
	if(civic == nil) then
		return;
	end

	local name = civic.Name;
	local description = civic.Description;
	local cost = civic.Cost;
-- DB
	local progress = ""
-- /DB

	local unlock_text;
	local unlockables = GetUnlockablesForCivic_Cached(civicType, playerId);

	if(playerId) then
		local player = Players[playerId];
		if(player) then
			local playerCulture = player:GetCulture();
			if(playerCulture) then
				cost = playerCulture:GetCultureCost(civic.Index);
-- DB
				if playerCulture:GetCulturalProgress(civic.Index) <= 0 then
					progress = "0"
				else
					progress = string.format("%.2f", playerCulture:GetCulturalProgress(civic.Index))
				end
-- /DB
			end
		end
	end

	if(unlockables and #unlockables > 0) then
		local unlock_lookup_text = {
			KIND_BUILDING = "LOC_TOOLTIP_UNLOCKS_BUILDING",
			KIND_DIPLOMATIC_ACTION = "LOC_TOOLTIP_UNLOCKS_DIPLOMACY",
			KIND_DISTRICT = "LOC_TOOLTIP_UNLOCKS_DISTRICT",
			KIND_GOVERNMENT = "LOC_TOOLTIP_UNLOCKS_GOVERNMENT",
			KIND_IMPROVEMENT = "LOC_TOOLTIP_UNLOCKS_IMPROVEMENT",
			KIND_POLICY = "LOC_TOOLTIP_UNLOCKS_POLICY",
			KIND_PROJECT = "LOC_TOOLTIP_UNLOCKS_PROJECT",
			KIND_UNIT = "LOC_TOOLTIP_UNLOCKS_UNIT",
		};

		function GetUnlockText(typeName, name)
			local t = GameInfo.Types[typeName];
			if(t) then
				local text = unlock_lookup_text[t.Kind];
				if(text) then
					return Locale.Lookup(text, name)
				else
					return Locale.Lookup(name);
				end
			end 
		end

		unlock_text = {};
		for i,v in ipairs(unlockables) do
			local text = GetUnlockText(v[1], v[2]);
			if(text) then
				table.insert(unlock_text, GetUnlockText(v[1], v[2]));
			end
		end
		table.sort(unlock_text, function(a,b) return Locale.Compare(a,b) == -1; end);
	end

	local obsolete = {};
	if(unlockables) then
		local unlockable_index = {};
		for i,v in ipairs(unlockables) do
			unlockable_index[v[1]] = true;
		end

		for row in GameInfo.ObsoletePolicies() do
			if(unlockable_index[row.ObsoletePolicy]) then
				local policy = GameInfo.Policies[row.PolicyType];
				if(policy) then
					table.insert(obsolete, Locale.Lookup("LOC_TOOLTIP_UNLOCKS_POLICY", policy.Name));
				end
			end
		end
	end
	table.sort(obsolete, function(a,b) return Locale.Compare(a,b) == -1; end);

	local yield_icon;
	local yield_name;
	local yield = GameInfo.Yields["YIELD_CULTURE"];
	if(yield) then
		yield_name = yield.Name;
		yield_icon = yield.IconString;
	end

	-- Build the tool tip line by line.
	local toolTipLines = {};
	table.insert(toolTipLines, Locale.ToUpper(name));
-- DB
	table.insert(toolTipLines, Locale.Lookup("{1_Progress}/{2_Cost} {3_Icon} {4_Name}", progress, cost, yield_icon, yield_name))
-- /DB
	
	if(not Locale.IsNilOrWhitespace(description)) then
		table.insert(toolTipLines, "[NEWLINE]" .. Locale.Lookup(description));
	end
		
	if(unlock_text and #unlock_text > 0) then
		table.insert(toolTipLines, "[NEWLINE]" .. Locale.Lookup("LOC_TOOLTIP_UNLOCKS"));
		for i,v in ipairs(unlock_text) do
			table.insert(toolTipLines, "[ICON_Bullet]" .. v);
		end
	end

	if(obsolete and #obsolete > 0) then
		table.insert(toolTipLines, "[NEWLINE]" .. Locale.Lookup("LOC_TOOLTIP_MAKES_OBSOLETE"));
		for i,v in ipairs(obsolete) do
			table.insert(toolTipLines, "[ICON_Bullet]" .. v);
		end
	end

	return table.concat(toolTipLines, "[NEWLINE]");
end
g_ToolTipGenerators.KIND_CIVIC = ToolTipHelper.GetCivicToolTip


ToolTipHelper.GetTechnologyToolTip = function(techType, playerId)
	-- ToolTip Format
	-- <Name> <Cost>
	-- <Static Description>
	-- <Unlocks>
	-- 	<UnlocksBuildings>
	-- 	<UnlocksImprovements>
	-- 	<UnlocksUnits>
	-- </Unlocks>
	
	-- Gather up all the information
	local tech = GameInfo.Technologies[techType];
	if(tech == nil) then
		return;
	end

	local name = tech.Name;
	local cost = tech.Cost;
	local description = tech.Description;
-- DB
	local progress = ""
-- /DB

	if(playerId) then
		local player = Players[playerId];
		if(player) then
			local playerTechs = player:GetTechs();
			if(playerTechs) then
				cost = playerTechs:GetResearchCost(tech.Index);
-- DB
				if playerTechs:GetResearchProgress(tech.Index) <= 0 then
					progress = "0"
				else
					progress = string.format("%.2f", playerTechs:GetResearchProgress(tech.Index))
				end
-- /DB
			end
		end
	end

	local unlock_text;
	local unlockables = GetUnlockablesForTech_Cached( techType, playerId );

	if(unlockables and #unlockables > 0) then
		local unlock_lookup_text = {
			KIND_BUILDING = "LOC_TOOLTIP_UNLOCKS_BUILDING",
			KIND_DIPLOMATIC_ACTION = "LOC_TOOLTIP_UNLOCKS_DIPLOMACY",
			KIND_DISTRICT = "LOC_TOOLTIP_UNLOCKS_DISTRICT",
			KIND_IMPROVEMENT = "LOC_TOOLTIP_UNLOCKS_IMPROVEMENT",
			KIND_PROJECT = "LOC_TOOLTIP_UNLOCKS_PROJECT",
			KIND_RESOURCE = "LOC_TOOLTIP_UNLOCKS_RESOURCE",
			KIND_ROUTE = "LOC_TOOLTIP_UNLOCKS_ROUTE",
			KIND_UNIT = "LOC_TOOLTIP_UNLOCKS_UNIT",
		};

		function GetUnlockText(typeName, name)
			local t = GameInfo.Types[typeName];
			if(t) then
				local text = unlock_lookup_text[t.Kind];
				if(text) then
					return Locale.Lookup(text, name)
				else
					return Locale.Lookup(name);
				end
			end 
		end

		unlock_text = {};
		for i,v in ipairs(unlockables) do
			local text = GetUnlockText(v[1], v[2]);
			if(text) then
				table.insert(unlock_text, text);
			end
		end
		table.sort(unlock_text, function(a,b) return Locale.Compare(a,b) == -1; end);
	end
	
	local yield_icon;
	local yield_name;
	local yield = GameInfo.Yields["YIELD_SCIENCE"];
	if(yield) then
		yield_name = yield.Name;
		yield_icon = yield.IconString;
	end
		
	-- Build the tool tip line by line.
	local toolTipLines = {};
	table.insert(toolTipLines, Locale.ToUpper(name));
-- DB
	table.insert(toolTipLines, Locale.Lookup("{1_Progress}/{2_Cost} {3_Icon} {4_Name}", progress, cost, yield_icon, yield_name))
-- /DB

	if(not Locale.IsNilOrWhitespace(description)) then
		table.insert(toolTipLines, "[NEWLINE]" .. Locale.Lookup(description));
	end
	
	if(unlock_text and #unlock_text > 0) then
		--table.insert(toolTipLines, "");
		table.insert(toolTipLines, "[NEWLINE]" .. Locale.Lookup("LOC_TOOLTIP_UNLOCKS"));
		for i,v in ipairs(unlock_text) do
			table.insert(toolTipLines, "[ICON_Bullet]" .. v);
		end
	end

	return table.concat(toolTipLines, "[NEWLINE]");
end

g_ToolTipGenerators.KIND_TECH = ToolTipHelper.GetTechnologyToolTip
