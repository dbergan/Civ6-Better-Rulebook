include("UnitPanel");

-- ===========================================================================
-- Override base game
-- ===========================================================================

function GetCombatModifierList(combatantHash:number)
	if (m_combatResults == nil) then
		return;
	end

	local baseStrengthValue = 0;
	local combatantResults = m_combatResults[combatantHash];

	baseStrengthValue = combatantResults[CombatResultParameters.COMBAT_STRENGTH];
	
	local baseStrengthText = baseStrengthValue .. " " .. Locale.Lookup("LOC_COMBAT_PREVIEW_BASE_STRENGTH");
	local interceptorModifierText = combatantResults[CombatResultParameters.PREVIEW_TEXT_INTERCEPTOR];
	local antiAirModifierText = combatantResults[CombatResultParameters.PREVIEW_TEXT_ANTI_AIR];
	local healthModifierText = combatantResults[CombatResultParameters.PREVIEW_TEXT_HEALTH];
	local terrainModifierText = combatantResults[CombatResultParameters.PREVIEW_TEXT_TERRAIN];
	local opponentModifierText = combatantResults[CombatResultParameters.PREVIEW_TEXT_OPPONENT];
	local modifierModifierText = combatantResults[CombatResultParameters.PREVIEW_TEXT_MODIFIER];
	local flankingModifierText = combatantResults[CombatResultParameters.PREVIEW_TEXT_ASSIST];
	local promotionModifierText = combatantResults[CombatResultParameters.PREVIEW_TEXT_PROMOTION];
	local defenseModifierText = combatantResults[CombatResultParameters.PREVIEW_TEXT_DEFENSES];
	local resourceModifierText = combatantResults[CombatResultParameters.PREVIEW_TEXT_RESOURCES];

	local modifierList:table = {};
	local modifierListSize:number = 0;
	if ( baseStrengthText ~= nil) then
		modifierList, modifierListSize = AddModifierToList(modifierList, modifierListSize, baseStrengthText, "ICON_STRENGTH");
	end
	if (interceptorModifierText ~= nil) then
		for i, item in ipairs(interceptorModifierText) do
			modifierList, modifierListSize = AddModifierToList(modifierList, modifierListSize, Locale.Lookup(item), "ICON_STATS_INTERCEPTOR");
		end
	end
	if (antiAirModifierText ~= nil) then
		for i, item in ipairs(antiAirModifierText) do
			modifierList, modifierListSize = AddModifierToList(modifierList, modifierListSize, Locale.Lookup(item), "ICON_STATS_ANTIAIR");
		end
	end
	if (healthModifierText ~= nil) then
		for i, item in ipairs(healthModifierText) do
			modifierList, modifierListSize = AddModifierToList(modifierList, modifierListSize, Locale.Lookup(item), "ICON_DAMAGE");
		end
	end
	if (terrainModifierText ~= nil) then
		for i, item in ipairs(terrainModifierText) do
			modifierList, modifierListSize = AddModifierToList(modifierList, modifierListSize, Locale.Lookup(item), "ICON_STATS_TERRAIN");
		end
	end
	if (opponentModifierText ~= nil) then
		for i, item in ipairs(opponentModifierText) do
			modifierList, modifierListSize = AddModifierToList(modifierList, modifierListSize, Locale.Lookup(item), "ICON_STRENGTH");
		end
	end
	if (modifierModifierText ~= nil) then
		for i, item in ipairs(modifierModifierText) do
			modifierList, modifierListSize = AddModifierToList(modifierList, modifierListSize, Locale.Lookup(item), "ICON_STRENGTH");
		end
	end
	if (flankingModifierText ~= nil) then
		for i, item in ipairs(flankingModifierText) do
			modifierList, modifierListSize = AddModifierToList(modifierList, modifierListSize, Locale.Lookup(item), "ICON_POSITION");
		end
	end
	if (promotionModifierText ~= nil) then
		for i, item in ipairs(promotionModifierText) do
			modifierList, modifierListSize = AddModifierToList(modifierList, modifierListSize, Locale.Lookup(item), "ICON_PROMOTION");
		end
	end
	if (defenseModifierText ~= nil) then
		for i, item in ipairs(defenseModifierText) do
			modifierList, modifierListSize = AddModifierToList(modifierList, modifierListSize, Locale.Lookup(item), "ICON_DEFENSE");
		end
	end
	if (resourceModifierText ~= nil) then
		for i, item in ipairs(resourceModifierText) do
			modifierList, modifierListSize = AddModifierToList(modifierList, modifierListSize, Locale.Lookup(item), "ICON_RESOURCES");
		end
	end

	return modifierList, modifierListSize;
end
