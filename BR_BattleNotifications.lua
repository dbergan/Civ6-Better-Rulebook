if not ExposedMembers.DB_BR then ExposedMembers.DB_BR = {} end;
local DB_BR = ExposedMembers.DB_BR;

-- ---------------------------------------------
-- Global constants that might want to be edited
-- Radius of 1 = the unit and each tile around it, 2 = each tile around the tiles in 1, etc.
BR_DefenderRadius = 1
BR_CityCaptureRadius = 2
BR_NuclearRadius = 1
BR_ThermonuclearRadius = 2
BR_AttackerRGB = "255,34,34"
BR_DefenderRGB = "85,85,255"
-- ---------------------------------------------

-- from TutorialScenarioBase.lua
function GetUnitType( playerID: number, unitID : number )
	local pPlayer	:table = Players[playerID]
	local pUnit		:table = pPlayer:GetUnits():FindID(unitID)

	if pUnit == nil then return "" end

	return GameInfo.Units[pUnit:GetUnitType()].UnitType
end

function BR_Combat_DebugPrintNotificationData(notificationData)

	print("****************************************************************************************")
	print(notificationData[ParameterTypes.MESSAGE])
	print(notificationData[ParameterTypes.SUMMARY])
	print("****************************************************************************************")
end

function BR_Combat_DebugPrintAllCombatResult(CombatResult)

	print("========================================================================================")
	print("CombatResult[CombatResultParameters.COMBAT_TYPE]", CombatResult[CombatResultParameters.COMBAT_TYPE])
	print("CombatResult[CombatResultParameters.LOCATION].x", CombatResult[CombatResultParameters.LOCATION].x)
	print("CombatResult[CombatResultParameters.LOCATION].y", CombatResult[CombatResultParameters.LOCATION].y)
	print("CombatResult[CombatResultParameters.ALT_SOURCE_LOCATION].x", CombatResult[CombatResultParameters.ALT_SOURCE_LOCATION].x)
	print("CombatResult[CombatResultParameters.ALT_SOURCE_LOCATION].y", CombatResult[CombatResultParameters.ALT_SOURCE_LOCATION].y)
	print("CombatResult[CombatResultParameters.DEFENDER_RETALIATES]", CombatResult[CombatResultParameters.DEFENDER_RETALIATES])
	print("CombatResult[CombatResultParameters.ATTACKER_ADVANCES]", CombatResult[CombatResultParameters.ATTACKER_ADVANCES])
	print("CombatResult[CombatResultParameters.DEFENDER_CAPTURED]", CombatResult[CombatResultParameters.DEFENDER_CAPTURED])
	print("CombatResult[CombatResultParameters.LOCATION_PILLAGED]", CombatResult[CombatResultParameters.LOCATION_PILLAGED])
	print("CombatResult[CombatResultParameters.WMD_STATUS]", CombatResult[CombatResultParameters.WMD_STATUS])
	print("CombatResult[CombatResultParameters.WMD_TYPE]", CombatResult[CombatResultParameters.WMD_TYPE])
	print("CombatResult[CombatResultParameters.WMD_STRIKE_RANGE]", CombatResult[CombatResultParameters.WMD_STRIKE_RANGE])
	print("CombatResult[CombatResultParameters.DAMAGE_MEMBER_COUNT]", CombatResult[CombatResultParameters.DAMAGE_MEMBER_COUNT])
	print("CombatResult[CombatResultParameters.VISUALIZE]", CombatResult[CombatResultParameters.VISUALIZE])
	print("CombatResult[CombatResultParameters.ATTACKER_ADVANCED_DURING_VISUALIZATION]", CombatResult[CombatResultParameters.ATTACKER_ADVANCED_DURING_VISUALIZATION])
	print(" ")
	print("CombatResult[CombatResultParameters.ATTACKER][CombatResultParameters.ID].type", CombatResult[CombatResultParameters.ATTACKER][CombatResultParameters.ID].type)	-- unit (1), city (3), or encamp (3)
	print("CombatResult[CombatResultParameters.ATTACKER][CombatResultParameters.ID].id", CombatResult[CombatResultParameters.ATTACKER][CombatResultParameters.ID].id)
	print("CombatResult[CombatResultParameters.ATTACKER][CombatResultParameters.ID].player", CombatResult[CombatResultParameters.ATTACKER][CombatResultParameters.ID].player)
	print("CombatResult[CombatResultParameters.ATTACKER][CombatResultParameters.LOCATION].x", CombatResult[CombatResultParameters.ATTACKER][CombatResultParameters.LOCATION].x)
	print("CombatResult[CombatResultParameters.ATTACKER][CombatResultParameters.LOCATION].y", CombatResult[CombatResultParameters.ATTACKER][CombatResultParameters.LOCATION].x)
	print("CombatResult[CombatResultParameters.ATTACKER][CombatResultParameters.COMBAT_STRENGTH]", CombatResult[CombatResultParameters.ATTACKER][CombatResultParameters.COMBAT_STRENGTH])
	print("CombatResult[CombatResultParameters.ATTACKER][CombatResultParameters.STRENGTH_MODIFIER]", CombatResult[CombatResultParameters.ATTACKER][CombatResultParameters.STRENGTH_MODIFIER])
	print("CombatResult[CombatResultParameters.ATTACKER][CombatResultParameters.COMBAT_SUB_TYPE]", CombatResult[CombatResultParameters.ATTACKER][CombatResultParameters.COMBAT_SUB_TYPE])
	print("CombatResult[CombatResultParameters.ATTACKER][CombatResultParameters.MAX_HIT_POINTS]", CombatResult[CombatResultParameters.ATTACKER][CombatResultParameters.MAX_HIT_POINTS])
	print("CombatResult[CombatResultParameters.ATTACKER][CombatResultParameters.DAMAGE_TO]", CombatResult[CombatResultParameters.ATTACKER][CombatResultParameters.DAMAGE_TO])
	print("CombatResult[CombatResultParameters.ATTACKER][CombatResultParameters.FINAL_DAMAGE_TO]", CombatResult[CombatResultParameters.ATTACKER][CombatResultParameters.FINAL_DAMAGE_TO])
	print("CombatResult[CombatResultParameters.ATTACKER][CombatResultParameters.MAX_DEFENSE_HIT_POINTS]", CombatResult[CombatResultParameters.ATTACKER][CombatResultParameters.MAX_DEFENSE_HIT_POINTS])
	print("CombatResult[CombatResultParameters.ATTACKER][CombatResultParameters.DEFENSE_DAMAGE_TO]", CombatResult[CombatResultParameters.ATTACKER][CombatResultParameters.DEFENSE_DAMAGE_TO])
	print("CombatResult[CombatResultParameters.ATTACKER][CombatResultParameters.FINAL_DEFENSE_DAMAGE_TO]", CombatResult[CombatResultParameters.ATTACKER][CombatResultParameters.FINAL_DEFENSE_DAMAGE_TO])
	print("CombatResult[CombatResultParameters.ATTACKER][CombatResultParameters.EXPERIENCE_CHANGE]", CombatResult[CombatResultParameters.ATTACKER][CombatResultParameters.EXPERIENCE_CHANGE])
	print("CombatResult[CombatResultParameters.ATTACKER][CombatResultParameters.ERA]", CombatResult[CombatResultParameters.ATTACKER][CombatResultParameters.ERA])
	print(" ")
	print("CombatResult[CombatResultParameters.DEFENDER][CombatResultParameters.ID].type", CombatResult[CombatResultParameters.DEFENDER][CombatResultParameters.ID].type)	-- unit (1), city (3), or encamp (3)
	print("CombatResult[CombatResultParameters.DEFENDER][CombatResultParameters.ID].id", CombatResult[CombatResultParameters.DEFENDER][CombatResultParameters.ID].id)
	print("CombatResult[CombatResultParameters.DEFENDER][CombatResultParameters.ID].player", CombatResult[CombatResultParameters.DEFENDER][CombatResultParameters.ID].player)
	print("CombatResult[CombatResultParameters.DEFENDER][CombatResultParameters.LOCATION].x", CombatResult[CombatResultParameters.DEFENDER][CombatResultParameters.LOCATION].x)
	print("CombatResult[CombatResultParameters.DEFENDER][CombatResultParameters.LOCATION].y", CombatResult[CombatResultParameters.DEFENDER][CombatResultParameters.LOCATION].x)
	print("CombatResult[CombatResultParameters.DEFENDER][CombatResultParameters.COMBAT_STRENGTH]", CombatResult[CombatResultParameters.DEFENDER][CombatResultParameters.COMBAT_STRENGTH])
	print("CombatResult[CombatResultParameters.DEFENDER][CombatResultParameters.STRENGTH_MODIFIER]", CombatResult[CombatResultParameters.DEFENDER][CombatResultParameters.STRENGTH_MODIFIER])
	print("CombatResult[CombatResultParameters.DEFENDER][CombatResultParameters.COMBAT_SUB_TYPE]", CombatResult[CombatResultParameters.DEFENDER][CombatResultParameters.COMBAT_SUB_TYPE])
	print("CombatResult[CombatResultParameters.DEFENDER][CombatResultParameters.MAX_HIT_POINTS]", CombatResult[CombatResultParameters.DEFENDER][CombatResultParameters.MAX_HIT_POINTS])
	print("CombatResult[CombatResultParameters.DEFENDER][CombatResultParameters.DAMAGE_TO]", CombatResult[CombatResultParameters.DEFENDER][CombatResultParameters.DAMAGE_TO])
	print("CombatResult[CombatResultParameters.DEFENDER][CombatResultParameters.FINAL_DAMAGE_TO]", CombatResult[CombatResultParameters.DEFENDER][CombatResultParameters.FINAL_DAMAGE_TO])
	print("CombatResult[CombatResultParameters.DEFENDER][CombatResultParameters.MAX_DEFENSE_HIT_POINTS]", CombatResult[CombatResultParameters.DEFENDER][CombatResultParameters.MAX_DEFENSE_HIT_POINTS])
	print("CombatResult[CombatResultParameters.DEFENDER][CombatResultParameters.DEFENSE_DAMAGE_TO]", CombatResult[CombatResultParameters.DEFENDER][CombatResultParameters.DEFENSE_DAMAGE_TO])
	print("CombatResult[CombatResultParameters.DEFENDER][CombatResultParameters.FINAL_DEFENSE_DAMAGE_TO]", CombatResult[CombatResultParameters.DEFENDER][CombatResultParameters.FINAL_DEFENSE_DAMAGE_TO])
	print("CombatResult[CombatResultParameters.DEFENDER][CombatResultParameters.EXPERIENCE_CHANGE]", CombatResult[CombatResultParameters.DEFENDER][CombatResultParameters.EXPERIENCE_CHANGE])
	print("CombatResult[CombatResultParameters.DEFENDER][CombatResultParameters.ERA]", CombatResult[CombatResultParameters.DEFENDER][CombatResultParameters.ERA])
	print(" ")
	print("CombatResult[CombatResultParameters.ANTI_AIR][CombatResultParameters.ID].type", CombatResult[CombatResultParameters.ANTI_AIR][CombatResultParameters.ID].type)	-- unit (1), city (3), or encamp (3)
	print("CombatResult[CombatResultParameters.ANTI_AIR][CombatResultParameters.ID].id", CombatResult[CombatResultParameters.ANTI_AIR][CombatResultParameters.ID].id)
	print("CombatResult[CombatResultParameters.ANTI_AIR][CombatResultParameters.ID].player", CombatResult[CombatResultParameters.ANTI_AIR][CombatResultParameters.ID].player)
	print("CombatResult[CombatResultParameters.ANTI_AIR][CombatResultParameters.LOCATION].x", CombatResult[CombatResultParameters.ANTI_AIR][CombatResultParameters.LOCATION].x)
	print("CombatResult[CombatResultParameters.ANTI_AIR][CombatResultParameters.LOCATION].y", CombatResult[CombatResultParameters.ANTI_AIR][CombatResultParameters.LOCATION].x)
	print("CombatResult[CombatResultParameters.ANTI_AIR][CombatResultParameters.COMBAT_STRENGTH]", CombatResult[CombatResultParameters.ANTI_AIR][CombatResultParameters.COMBAT_STRENGTH])
	print("CombatResult[CombatResultParameters.ANTI_AIR][CombatResultParameters.STRENGTH_MODIFIER]", CombatResult[CombatResultParameters.ANTI_AIR][CombatResultParameters.STRENGTH_MODIFIER])
	print("CombatResult[CombatResultParameters.ANTI_AIR][CombatResultParameters.COMBAT_SUB_TYPE]", CombatResult[CombatResultParameters.ANTI_AIR][CombatResultParameters.COMBAT_SUB_TYPE])
	print("CombatResult[CombatResultParameters.ANTI_AIR][CombatResultParameters.MAX_HIT_POINTS]", CombatResult[CombatResultParameters.ANTI_AIR][CombatResultParameters.MAX_HIT_POINTS])
	print("CombatResult[CombatResultParameters.ANTI_AIR][CombatResultParameters.DAMAGE_TO]", CombatResult[CombatResultParameters.ANTI_AIR][CombatResultParameters.DAMAGE_TO])
	print("CombatResult[CombatResultParameters.ANTI_AIR][CombatResultParameters.FINAL_DAMAGE_TO]", CombatResult[CombatResultParameters.ANTI_AIR][CombatResultParameters.FINAL_DAMAGE_TO])
	print("CombatResult[CombatResultParameters.ANTI_AIR][CombatResultParameters.MAX_DEFENSE_HIT_POINTS]", CombatResult[CombatResultParameters.ANTI_AIR][CombatResultParameters.MAX_DEFENSE_HIT_POINTS])
	print("CombatResult[CombatResultParameters.ANTI_AIR][CombatResultParameters.DEFENSE_DAMAGE_TO]", CombatResult[CombatResultParameters.ANTI_AIR][CombatResultParameters.DEFENSE_DAMAGE_TO])
	print("CombatResult[CombatResultParameters.ANTI_AIR][CombatResultParameters.FINAL_DEFENSE_DAMAGE_TO]", CombatResult[CombatResultParameters.ANTI_AIR][CombatResultParameters.FINAL_DEFENSE_DAMAGE_TO])
	print("CombatResult[CombatResultParameters.ANTI_AIR][CombatResultParameters.EXPERIENCE_CHANGE]", CombatResult[CombatResultParameters.ANTI_AIR][CombatResultParameters.EXPERIENCE_CHANGE])
	print("CombatResult[CombatResultParameters.ANTI_AIR][CombatResultParameters.ERA]", CombatResult[CombatResultParameters.ANTI_AIR][CombatResultParameters.ERA])
	print(" ")
	print("CombatResult[CombatResultParameters.INTERCEPTOR][CombatResultParameters.ID].type", CombatResult[CombatResultParameters.INTERCEPTOR][CombatResultParameters.ID].type)	-- unit (1), city (3), or encamp (3)
	print("CombatResult[CombatResultParameters.INTERCEPTOR][CombatResultParameters.ID].id", CombatResult[CombatResultParameters.INTERCEPTOR][CombatResultParameters.ID].id)
	print("CombatResult[CombatResultParameters.INTERCEPTOR][CombatResultParameters.ID].player", CombatResult[CombatResultParameters.INTERCEPTOR][CombatResultParameters.ID].player)
	print("CombatResult[CombatResultParameters.INTERCEPTOR][CombatResultParameters.LOCATION].x", CombatResult[CombatResultParameters.INTERCEPTOR][CombatResultParameters.LOCATION].x)
	print("CombatResult[CombatResultParameters.INTERCEPTOR][CombatResultParameters.LOCATION].y", CombatResult[CombatResultParameters.INTERCEPTOR][CombatResultParameters.LOCATION].x)
	print("CombatResult[CombatResultParameters.INTERCEPTOR][CombatResultParameters.COMBAT_STRENGTH]", CombatResult[CombatResultParameters.INTERCEPTOR][CombatResultParameters.COMBAT_STRENGTH])
	print("CombatResult[CombatResultParameters.INTERCEPTOR][CombatResultParameters.STRENGTH_MODIFIER]", CombatResult[CombatResultParameters.INTERCEPTOR][CombatResultParameters.STRENGTH_MODIFIER])
	print("CombatResult[CombatResultParameters.INTERCEPTOR][CombatResultParameters.COMBAT_SUB_TYPE]", CombatResult[CombatResultParameters.INTERCEPTOR][CombatResultParameters.COMBAT_SUB_TYPE])
	print("CombatResult[CombatResultParameters.INTERCEPTOR][CombatResultParameters.MAX_HIT_POINTS]", CombatResult[CombatResultParameters.INTERCEPTOR][CombatResultParameters.MAX_HIT_POINTS])
	print("CombatResult[CombatResultParameters.INTERCEPTOR][CombatResultParameters.DAMAGE_TO]", CombatResult[CombatResultParameters.INTERCEPTOR][CombatResultParameters.DAMAGE_TO])
	print("CombatResult[CombatResultParameters.INTERCEPTOR][CombatResultParameters.FINAL_DAMAGE_TO]", CombatResult[CombatResultParameters.INTERCEPTOR][CombatResultParameters.FINAL_DAMAGE_TO])
	print("CombatResult[CombatResultParameters.INTERCEPTOR][CombatResultParameters.MAX_DEFENSE_HIT_POINTS]", CombatResult[CombatResultParameters.INTERCEPTOR][CombatResultParameters.MAX_DEFENSE_HIT_POINTS])
	print("CombatResult[CombatResultParameters.INTERCEPTOR][CombatResultParameters.DEFENSE_DAMAGE_TO]", CombatResult[CombatResultParameters.INTERCEPTOR][CombatResultParameters.DEFENSE_DAMAGE_TO])
	print("CombatResult[CombatResultParameters.INTERCEPTOR][CombatResultParameters.FINAL_DEFENSE_DAMAGE_TO]", CombatResult[CombatResultParameters.INTERCEPTOR][CombatResultParameters.FINAL_DEFENSE_DAMAGE_TO])
	print("CombatResult[CombatResultParameters.INTERCEPTOR][CombatResultParameters.EXPERIENCE_CHANGE]", CombatResult[CombatResultParameters.INTERCEPTOR][CombatResultParameters.EXPERIENCE_CHANGE])
	print("CombatResult[CombatResultParameters.INTERCEPTOR][CombatResultParameters.ERA]", CombatResult[CombatResultParameters.INTERCEPTOR][CombatResultParameters.ERA])
	print("========================================================================================")
end

function ExpectedDmg(AttStr, DefStr, WallMaxHP, WallDamage, HasTower)
	local NormalDmg = 29.5*2.6553^(0.04*(AttStr-DefStr))
	local WallAdjustedDmg = NormalDmg
	if WallMaxHP ~= nil and WallMaxHP > 0 and (HasTower == nil or HasTower == false) then
		WallAdjustedDmg = WallAdjustedDmg * WallDamage / WallMaxHP
	end
	return string.format("%.1f", WallAdjustedDmg)
end

function ExpectedWallDmg(AttStr, DefStr, CombatType, HasRam)
	local NormalDmg = 29.5*2.6553^(0.04*(AttStr-DefStr))
	local WallDmg = NormalDmg
	if CombatType == CombatTypes.MELEE and (HasRam == nil or HasRam == false) then
		WallDmg = WallDmg * 0.15
	elseif CombatType == CombatTypes.RANGED then
		WallDmg = WallDmg * 0.50
	end
	return string.format("%.1f", WallDmg)
end

function BR_CombatIcon(CombatType, WMDType)
	if CombatType == CombatTypes.MELEE then
		return "[ICON_Strength]"
	elseif CombatType == CombatTypes.RANGED then
		return "[ICON_Ranged]"
	elseif CombatType == CombatTypes.BOMBARD then
		return "[ICON_Bombard]"
	elseif CombatType == CombatTypes.RELIGIOUS then
		return "[ICON_Religion]"
	elseif CombatType == CombatTypes.AIR then
		return "[ICON_Range]"
	elseif CombatType == CombatTypes.ICBM and WMDType == 0 then
		return "[ICON_Nuclear]"
	elseif CombatType == CombatTypes.ICBM then
		return "[ICON_ThermoNuclear]"
	end
end

-- Combatant = CombatResultParameters.ATTACKER, CombatResultParameters.DEFENDER, CombatResultParameters.ANTI_AIR, or CombatResultParameters.INTERCEPTOR
function BR_CombatantShortName(CombatResult, Combatant)
	local a = ""
	if CombatResult[Combatant][CombatResultParameters.ID].type == 3 then -- type 3 = district (city or encampment)
		local district = CityManager.GetDistrictAt(CombatResult[Combatant][CombatResultParameters.LOCATION].x, CombatResult[Combatant][CombatResultParameters.LOCATION].y)
		if district:GetType() == 3 then						-- district type 3 = encampment >> "Paris Encampment"
			local city = district:GetCity() ;
			a = a .. "{" .. city:GetName() .. "}"
			a = a .. " Encampment"
		else												-- district type = city >> "Paris"
			local city = Cities.GetCityInPlot(CombatResult[Combatant][CombatResultParameters.LOCATION].x, CombatResult[Combatant][CombatResultParameters.LOCATION].y)
			a = a .. "{" .. city:GetName() .. "}"
		end
	elseif CombatResult[Combatant][CombatResultParameters.ID].type == 1 then	-- type 1 = unit >> "French Warrior"
		local unit = UnitManager.GetUnit(CombatResult[Combatant][CombatResultParameters.ID].player, CombatResult[Combatant][CombatResultParameters.ID].id)
		local name = unit:GetName()
		local vetname = unit:GetExperience():GetVeteranName()

		if vetname ~= "" then
			a = a .. vetname
		else
			a = a .. "{LOC_" .. PlayerConfigurations[CombatResult[Combatant][CombatResultParameters.ID].player]:GetCivilizationTypeName() .. "_ADJECTIVE} "
			a = a .. "{" .. name .. "}"
		end
	end
	return a
end

function BR_CombatantLongName(CombatResult, Combatant)
	local a = BR_CombatantShortName(CombatResult, Combatant)

	if CombatResult[Combatant][CombatResultParameters.ID].type == 1 then
		local unit = UnitManager.GetUnit(CombatResult[Combatant][CombatResultParameters.ID].player, CombatResult[Combatant][CombatResultParameters.ID].id)
		local level = unit:GetExperience():GetLevel()
		local milform = unit:GetMilitaryFormation()
		local milformstring = ""
		local unitType = unit:GetUnitType()
		local unitInfo = GameInfo.Units[unitType]
		if unitInfo.Domain == "DOMAIN_SEA" then
			if milform == MilitaryFormationTypes.CORPS_FORMATION then
				milformstring = Locale.Lookup("LOC_HUD_UNIT_PANEL_FLEET_SUFFIX")
			elseif milform == MilitaryFormationTypes.ARMY_FORMATION then
				milformstring = Locale.Lookup("LOC_HUD_UNIT_PANEL_ARMADA_SUFFIX")
			end
		else
			if milform == MilitaryFormationTypes.CORPS_FORMATION then
				milformstring = Locale.Lookup("LOC_HUD_UNIT_PANEL_CORPS_SUFFIX")
			elseif milform == MilitaryFormationTypes.ARMY_FORMATION then
				milformstring = Locale.Lookup("LOC_HUD_UNIT_PANEL_ARMY_SUFFIX")
			end
		end

		if milformstring ~= "" then
			a = a .. " (level " .. level .. ", " .. milformstring .. ")"
		else
			a = a .. " (level " .. level .. ")"
		end
	end
	return a
end

function BR_Combat_Summary(CombatResult)
	-- "French Warrior attacked Greek Slinger" || "Greek Slinger attacked Paris" || "Paris Encampment attacked Greek Slinger" || "Greek Warrior captured Paris"
	local a = "[COLOR:" .. BR_AttackerRGB .. ",255]"
	a = a .. BR_CombatantShortName(CombatResult, CombatResultParameters.ATTACKER)
	a = a .. "[ENDCOLOR]"

	-- "attacked"
	if CombatResult[CombatResultParameters.DEFENDER][CombatResultParameters.ID].type == 3 and CombatResult[CombatResultParameters.ATTACKER_ADVANCES] then
		a = a .. " captured "
	else
		a = a .. " attacked "
	end

	-- defender name
	a = a .. "[COLOR:" .. BR_DefenderRGB .. ",255]"
	a = a .. BR_CombatantShortName(CombatResult, CombatResultParameters.DEFENDER)
	a = a .. "[ENDCOLOR]"
	
	return a
end

-- Combatant = CombatResultParameters.ATTACKER, CombatResultParameters.DEFENDER, CombatResultParameters.ANTI_AIR, or CombatResultParameters.INTERCEPTOR
function BR_CombatantLocationString(CombatResult, Combatant)
	local a = ""
	if Combatant == CombatResultParameters.ATTACKER then
		a = a .. "attacked from "
	else
		a = a .. "defended at "
	end
	a = a .. CombatResult[Combatant][CombatResultParameters.LOCATION].x .. "," .. CombatResult[Combatant][CombatResultParameters.LOCATION].y
	return a
end

-- Combatant = CombatResultParameters.ATTACKER, CombatResultParameters.DEFENDER, CombatResultParameters.ANTI_AIR, or CombatResultParameters.INTERCEPTOR
function BR_CombatStrengthString(CombatResult, Combatant)
	local a = ""
	a = a .. tostring(CombatResult[Combatant][CombatResultParameters.COMBAT_STRENGTH] + CombatResult[Combatant][CombatResultParameters.STRENGTH_MODIFIER])
	if Combatant == CombatResultParameters.ATTACKER then
		a = a .. BR_CombatIcon(CombatResult[CombatResultParameters.COMBAT_TYPE], CombatResult[CombatResultParameters.WMD_TYPE])
	elseif Combatant == CombatResultParameters.DEFENDER then
		a = a .. "[ICON_Strength]"
	elseif Combatant == CombatResultParameters.INTERCEPTOR then
		a = a .. "[ICON_AntiAir_Large]"
	else
		a = a .. "[ICON_AntiAir_Large]"
	end
	return a
end

-- Combatant = CombatResultParameters.ATTACKER, CombatResultParameters.DEFENDER, CombatResultParameters.ANTI_AIR, or CombatResultParameters.INTERCEPTOR
function BR_HealthChangeString(CombatResult, Combatant)
	local MaxHP = CombatResult[Combatant][CombatResultParameters.MAX_HIT_POINTS]
	local StartHP = CombatResult[Combatant][CombatResultParameters.MAX_HIT_POINTS] - CombatResult[Combatant][CombatResultParameters.FINAL_DAMAGE_TO] + CombatResult[Combatant][CombatResultParameters.DAMAGE_TO]
	local NewDamage = CombatResult[Combatant][CombatResultParameters.DAMAGE_TO]
	local EndHP = CombatResult[Combatant][CombatResultParameters.MAX_HIT_POINTS] - CombatResult[Combatant][CombatResultParameters.FINAL_DAMAGE_TO]
	if EndHP < 0 then
		EndHP = 0
	end

	local ExpectedDamage = ""
	if Combatant == CombatResultParameters.ATTACKER then
		ExpectedDamage = ExpectedDmg(CombatResult[CombatResultParameters.DEFENDER][CombatResultParameters.COMBAT_STRENGTH] + CombatResult[CombatResultParameters.DEFENDER][CombatResultParameters.STRENGTH_MODIFIER], CombatResult[CombatResultParameters.ATTACKER][CombatResultParameters.COMBAT_STRENGTH] + CombatResult[CombatResultParameters.ATTACKER][CombatResultParameters.STRENGTH_MODIFIER])
	elseif Combatant == CombatResultParameters.DEFENDER then
		ExpectedDamage = ExpectedDmg(CombatResult[CombatResultParameters.ATTACKER][CombatResultParameters.COMBAT_STRENGTH] + CombatResult[CombatResultParameters.ATTACKER][CombatResultParameters.STRENGTH_MODIFIER], CombatResult[CombatResultParameters.DEFENDER][CombatResultParameters.COMBAT_STRENGTH] + CombatResult[CombatResultParameters.DEFENDER][CombatResultParameters.STRENGTH_MODIFIER], CombatResult[CombatResultParameters.DEFENDER][CombatResultParameters.MAX_DEFENSE_HIT_POINTS], CombatResult[CombatResultParameters.DEFENDER][CombatResultParameters.FINAL_DEFENSE_DAMAGE_TO] - CombatResult[CombatResultParameters.DEFENDER][CombatResultParameters.DEFENSE_DAMAGE_TO])
	end

	local a = ""
	if Combatant == CombatResultParameters.ATTACKER and CombatResult[CombatResultParameters.DEFENDER_RETALIATES] == false then		-- ranged attack
		a = a .. "0dmg (ranged attack)"
	else
		a = a .. tostring(StartHP) .. "hp - "
		a = a .. tostring(NewDamage) .. "dmg "
		a = a .. "(expected " .. tostring(ExpectedDamage) .. ") = "
		a = a .. EndHP .. "hp"
		if CombatResult[Combatant][CombatResultParameters.ID].type == 1 and EndHP <= 0 then
			a = a .. "[NEWLINE]DEAD"
		end
	end
	return a
end

-- Combatant = CombatResultParameters.ATTACKER, CombatResultParameters.DEFENDER, CombatResultParameters.ANTI_AIR, or CombatResultParameters.INTERCEPTOR
function BR_XPChangeString(CombatResult, Combatant)
	local a = ""
	if CombatResult[Combatant][CombatResultParameters.ID].type == 1 and CombatResult[Combatant][CombatResultParameters.MAX_HIT_POINTS] <= CombatResult[Combatant][CombatResultParameters.FINAL_DAMAGE_TO] then		-- don't print for a dead unit
		a = ""
	elseif CombatResult[Combatant][CombatResultParameters.EXPERIENCE_CHANGE] > 0 or CombatResult[Combatant][CombatResultParameters.ID].type == 1 then		-- print if there's XP or if it's an alive unit (they can have 0 if they are sitting on a promotion)
		a = "[NEWLINE]+" .. CombatResult[Combatant][CombatResultParameters.EXPERIENCE_CHANGE] .. "xp"
	end
	return a
end

function BR_AntiAirString(CombatResult)
	local a = ""
	if CombatResult[CombatResultParameters.COMBAT_TYPE] == CombatTypes.AIR and CombatResult[CombatResultParameters.ANTI_AIR][CombatResultParameters.COMBAT_STRENGTH] > 0 then
		a = a .. "[NEWLINE]Anti-Air: " .. BR_CombatStrengthString(CombatResult, CombatResultParameters.ANTI_AIR)
		a = a .. " did "
		a = a .. tostring(CombatResult[CombatResultParameters.ATTACKER][CombatResultParameters.DAMAGE_TO])
		a = a .. "dmg"
	end
	return a
end

function BR_InterceptorString(CombatResult)
	local a = ""
	if CombatResult[CombatResultParameters.COMBAT_TYPE] == CombatTypes.AIR and CombatResult[CombatResultParameters.INTERCEPTOR][CombatResultParameters.COMBAT_STRENGTH] > 0 then
		a = a .. "[NEWLINE]Interceptor: " .. BR_CombatStrengthString(CombatResult, CombatResultParameters.INTERCEPTOR)
		a = a .. " did "
		a = a .. tostring(CombatResult[CombatResultParameters.ATTACKER][CombatResultParameters.DAMAGE_TO])
		a = a .. "dmg"
	end
	return a
end

function BR_WallString(CombatResult)
	local a = ""
	if CombatResult[CombatResultParameters.DEFENDER][CombatResultParameters.MAX_DEFENSE_HIT_POINTS] > 0 then
		local MaxHP = CombatResult[CombatResultParameters.DEFENDER][CombatResultParameters.MAX_DEFENSE_HIT_POINTS]
		local StartHP = CombatResult[CombatResultParameters.DEFENDER][CombatResultParameters.MAX_DEFENSE_HIT_POINTS] - CombatResult[CombatResultParameters.DEFENDER][CombatResultParameters.FINAL_DEFENSE_DAMAGE_TO] + CombatResult[CombatResultParameters.DEFENDER][CombatResultParameters.DEFENSE_DAMAGE_TO]
		local NewDamage = CombatResult[CombatResultParameters.DEFENDER][CombatResultParameters.DEFENSE_DAMAGE_TO]
		local EndHP = CombatResult[CombatResultParameters.DEFENDER][CombatResultParameters.MAX_DEFENSE_HIT_POINTS] - CombatResult[CombatResultParameters.DEFENDER][CombatResultParameters.FINAL_DEFENSE_DAMAGE_TO]
		if EndHP < 0 then
			EndHP = 0
		end

		local ExpectedDamage = ExpectedWallDmg(CombatResult[CombatResultParameters.ATTACKER][CombatResultParameters.COMBAT_STRENGTH] + CombatResult[CombatResultParameters.ATTACKER][CombatResultParameters.STRENGTH_MODIFIER], CombatResult[CombatResultParameters.DEFENDER][CombatResultParameters.COMBAT_STRENGTH] + CombatResult[CombatResultParameters.DEFENDER][CombatResultParameters.STRENGTH_MODIFIER], CombatResult[CombatResultParameters.COMBAT_TYPE])

		a = a .. "[NEWLINE]Wall: "
		a = a .. tostring(StartHP) .. "hp - "
		a = a .. tostring(NewDamage) .. "dmg "
		a = a .. "(expected " .. tostring(ExpectedDamage) .. ") = "
		a = a .. EndHP .. "hp"
	end
	return a
end


function BR_AttackerDetails(CombatResult)	
	local a = "[COLOR:" .. BR_AttackerRGB .. ",255]"
	a = a .. BR_CombatantLongName(CombatResult, CombatResultParameters.ATTACKER) .. " "
	a = a .. BR_CombatantLocationString(CombatResult, CombatResultParameters.ATTACKER) .. "[NEWLINE]"
	a = a .. BR_CombatStrengthString(CombatResult, CombatResultParameters.ATTACKER) .. "[NEWLINE]"
	a = a .. BR_HealthChangeString(CombatResult, CombatResultParameters.ATTACKER)
	a = a .. BR_XPChangeString(CombatResult, CombatResultParameters.ATTACKER)
	a = a .. BR_AntiAirString(CombatResult)
	a = a .. BR_InterceptorString(CombatResult)
	a = a .. "[ENDCOLOR]"
	return a
end

function BR_DefenderDetails(CombatResult)
	local a = "[COLOR:" .. BR_DefenderRGB .. ",255]"
	a = a .. BR_CombatantLongName(CombatResult, CombatResultParameters.DEFENDER) .. " "
	a = a .. BR_CombatantLocationString(CombatResult, CombatResultParameters.DEFENDER) .. "[NEWLINE]"
	a = a .. BR_CombatStrengthString(CombatResult, CombatResultParameters.DEFENDER) .. "[NEWLINE]"
	a = a .. BR_HealthChangeString(CombatResult, CombatResultParameters.DEFENDER)
	a = a .. BR_XPChangeString(CombatResult, CombatResultParameters.DEFENDER)
	a = a .. BR_WallString(CombatResult)
	a = a .. "[ENDCOLOR]"
	return a
end


function BR_Combat(CombatResult)

	if CombatResult == nil then print("CombatResult is nil") return end
	if CombatResultParameters == nil then print("CombatResultParameters is nil") return end

	if CombatResult[-1480090105] > -1 then		-- CombatResultParameters.WMD_TYPE = -1480090105 (sometimes CombatResultParameters.WMD_TYPE is nil)
		BR_Combat_WMD(CombatResult)
		return
	end
	
	local notificationData = {}
	notificationData[ParameterTypes.LOCATION] = { x = CombatResult[CombatResultParameters.DEFENDER][CombatResultParameters.LOCATION].x, y = CombatResult[CombatResultParameters.DEFENDER][CombatResultParameters.LOCATION].y }
	notificationData[ParameterTypes.MESSAGE] = BR_Combat_Summary(CombatResult)
	notificationData[ParameterTypes.SUMMARY] = BR_AttackerDetails(CombatResult) .. "[NEWLINE][NEWLINE]" .. BR_DefenderDetails(CombatResult)

	NotificationManager.SendNotification(CombatResult[CombatResultParameters.ATTACKER][CombatResultParameters.ID].player, NotificationTypes.USER_DEFINED_5, notificationData)	-- USER_DEFINED_5 for attacker reports
	if CombatResult[CombatResultParameters.DEFENDER][CombatResultParameters.ID].type == 3 and CombatResult[CombatResultParameters.ATTACKER_ADVANCES] then
		NotificationManager.SendNotification(CombatResult[CombatResultParameters.DEFENDER][CombatResultParameters.ID].player, NotificationTypes.USER_DEFINED_7, notificationData)	-- USER_DEFINED_7 for city capture reports (gives vision)
	else
		NotificationManager.SendNotification(CombatResult[CombatResultParameters.DEFENDER][CombatResultParameters.ID].player, NotificationTypes.USER_DEFINED_6, notificationData)	-- USER_DEFINED_6 for defender reports (gives vision)
	end

	-- drop pins

	-- BR_Combat_DebugPrintNotificationData(notificationData)
	-- BR_Combat_DebugPrintAllCombatResult(CombatResult)

end

function BR_Combat_WMD(CombatResult)
	local notificationData = {}
	notificationData[ParameterTypes.LOCATION] = { x = CombatResult[CombatResultParameters.LOCATION].x, y = CombatResult[CombatResultParameters.LOCATION].y }

	local a = ""
	local icon = ""
	a = a .. "{LOC_" .. PlayerConfigurations[CombatResult[CombatResultParameters.ATTACKER][CombatResultParameters.ID].player]:GetCivilizationTypeName() .. "_ADJECTIVE} "
	if CombatResult[CombatResultParameters.WMD_TYPE] == 0 then
		a = a .. "Nuclear"
		icon = "[ICON_Nuclear]"
	else
		a = a .. "Thermonuclear"
		icon = "[ICON_ThermoNuclear]"
	end
	a = a .. " weapon detonated"
	notificationData[ParameterTypes.MESSAGE] = a

	a = "Source" .. icon .. ": "

	if CombatResult[CombatResultParameters.ATTACKER][CombatResultParameters.ID].type == 1 then
		local Attacker = Players[CombatResult[CombatResultParameters.ATTACKER][CombatResultParameters.ID].player]
		local Unit = Attacker:GetUnits():FindID(CombatResult[CombatResultParameters.ATTACKER][CombatResultParameters.ID].id)
		a = a .. "{LOC_" .. PlayerConfigurations[CombatResult[CombatResultParameters.ATTACKER][CombatResultParameters.ID].player]:GetCivilizationTypeName() .. "_ADJECTIVE} "
		a = a .. "{LOC_" .. GetUnitType(CombatResult[CombatResultParameters.ATTACKER][CombatResultParameters.ID].player, CombatResult[CombatResultParameters.ATTACKER][CombatResultParameters.ID].id) .. "_NAME} "
		a = a .. "(at " .. Unit:GetX() .. "," .. Unit:GetY() .. ")"
	elseif CombatResult[CombatResultParameters.ALT_SOURCE_LOCATION].x >= 0 then
		a = a .. "Missile Silo (at " .. CombatResult[CombatResultParameters.ALT_SOURCE_LOCATION].x .. "," .. CombatResult[CombatResultParameters.ALT_SOURCE_LOCATION].y .. ")"
	else
		a = a .. "???"
	end
	a = a .. "[NEWLINE]"
	a = a .. "Destination: "
	local Plot = Map.GetPlot(CombatResult[CombatResultParameters.LOCATION].x, CombatResult[CombatResultParameters.LOCATION].y)
	if Plot:IsCity() then
		local City = CityManager.GetCityAt(CombatResult[CombatResultParameters.LOCATION].x, CombatResult[CombatResultParameters.LOCATION].y)
		a = a .. "{" .. City:GetName() .. "} "
	end

	a = a .. "(" .. CombatResult[CombatResultParameters.LOCATION].x .. "," .. CombatResult[CombatResultParameters.LOCATION].y .. ")"
	notificationData[ParameterTypes.SUMMARY] = a

	local AllPlayers = PlayerManager.GetAliveMajors()
	for _, Player in pairs(AllPlayers) do
		if CombatResult[CombatResultParameters.WMD_TYPE] == 0 then
			NotificationManager.SendNotification(Player:GetID(), NotificationTypes.USER_DEFINED_8, notificationData)	-- USER_DEFINED_8 for nuke reports
		else
			NotificationManager.SendNotification(Player:GetID(), NotificationTypes.USER_DEFINED_9, notificationData)	-- USER_DEFINED_9 for thermonuke reports
		end
	end

	-- drop pins
	print("ICON_" .. GameInfo.Projects["PROJECT_OPERATION_IVY"].ProjectType)
	local pPlayerCfg = PlayerConfigurations[0]
	local pMapPin = pPlayerCfg:GetMapPin(CombatResult[CombatResultParameters.LOCATION].x, CombatResult[CombatResultParameters.LOCATION].y)
	local playerMapPins = pPlayerCfg:GetMapPins()
	print("pMapPin", pMapPin)
	for key, value in pairs(pMapPin) do
		print("-",key, value)
	end
	print("pMapPin:SetName()", pMapPin:SetName("test"))
	print("pMapPin:SetIconName()", pMapPin:SetIconName("ICON_" .. GameInfo.Projects["PROJECT_OPERATION_IVY"].ProjectType))
	print("pMapPin:GetName(test)", pMapPin:GetName("test"))
	print("pMapPin:GetName()", pMapPin:GetName())
	print("pMapPin:GetIconName(ICON_PROJECT_OPERATION_IVY)", pMapPin:GetIconName("ICON_" .. GameInfo.Projects["PROJECT_OPERATION_IVY"].ProjectType))
	print("pMapPin:GetIconName()", pMapPin:GetIconName())
	print("pMapPin:GetID()", pMapPin:GetID())
--	print("pMapPin:GetVisibility()", pMapPin:GetVisibility())
	print("pMapPin:IsVisible()", pMapPin:IsVisible())
--	print("playerMapPins[pMapPin]", playerMapPins[pMapPin])

	local mapPinEntry = GetMapPinListEntry(0, pMapPin:GetID());
	print("mapPinEntry", mapPinEntry)
	local mapPinCfg = GetMapPinConfig(0, pMapPin:GetID());
	print("mapPinCfg", mapPinCfg)

--[[
	for key, value in pairs(playerMapPins) do
		print("--", key, value)
		for key2, value2 in pairs(value) do
			print("---", key2, value2)
			print("---", value2.__instance)
			for key3, value3 in pairs(value2) do
				print("----", key3, value3)
			end
		end
	end
--]]

--[[
	local mapPinCfg = GetMapPinConfig(pinPlayerID, pinID);
	if(mapPinCfg:GetName() ~= nil) then
		instance.MapPinButton:SetText(mapPinCfg:GetName());
	else
		instance.MapPinButton:SetText(Locale.Lookup("LOC_MAP_PIN_DEFAULT_NAME", mapPinCfg:GetID()));
	end
	instance.MapPinButton:SetOffsetVal(instance.PlayerString:GetSizeX(), 0);
	instance.MapPinButton:SetSizeX(instance.MapPinButton:GetTextControl():GetSizeX()+BUTTON_TEXT_PADDING);
	
	-- LuaEvents.MapPinPopup_RequestMapPin(CombatResult[CombatResultParameters.LOCATION].x+1, CombatResult[CombatResultParameters.LOCATION].y+1)


	if(imageControl ~= nil and mapPinIconName ~= nil) then
		local iconName = mapPinIconName;
		if(not imageControl:SetIcon(iconName)) then
			imageControl:SetIcon(MapTacks.UNKNOWN);
		end
	end
--]]

end

-- Add vision with NOTIFICATION_USER_DEFINED_6, 7, 8, and 9
function BR_OnNotificationAdded(playerID, notificationID) 
	if playerID == nil or Game == nil then return end

	if playerID ~= Game.GetLocalPlayer() then return end 

	local pPlayer : table = PlayerConfigurations[playerID]

	if (not pPlayer:IsAlive()) then return end 

	local pNotification : table = NotificationManager.Find( playerID, notificationID )

	if pNotification == nil then return end
		
	if (not pNotification:IsVisibleInUI()) then return end

	if (not pNotification:IsLocationValid()) then return end

	local x, y = pNotification:GetLocation()
	if pNotification:GetTypeName() == "NOTIFICATION_USER_DEFINED_6" then
		DB_BR.ChangeVisibility(playerID, x, y, BR_DefenderRadius, true)
	elseif pNotification:GetTypeName() == "NOTIFICATION_USER_DEFINED_7" then
		DB_BR.ChangeVisibility(playerID, x, y, BR_CityCaptureRadius, true)
	elseif pNotification:GetTypeName() == "NOTIFICATION_USER_DEFINED_8" then
		DB_BR.ChangeVisibility(playerID, x, y, BR_NuclearRadius, true)
	elseif pNotification:GetTypeName() == "NOTIFICATION_USER_DEFINED_9" then
		DB_BR.ChangeVisibility(playerID, x, y, BR_ThermonuclearRadius, true)
	end
	
end

-- Remove vision when NOTIFICATION_USER_DEFINED_6, 7, 8, or 9 is dismissed
function BR_OnNotificationDismissed(playerID, notificationID)
	if playerID == nil or Game == nil then return end

	if playerID ~= Game.GetLocalPlayer() then return end

	local pPlayer : table = PlayerConfigurations[playerID]

	if (not pPlayer:IsAlive()) then return end

	local pNotification : table = NotificationManager.Find( playerID, notificationID )

	if pNotification == nil then return end
		
	if (not pNotification:IsVisibleInUI()) then return end

	if (not pNotification:IsLocationValid()) then return end

	local x, y = pNotification:GetLocation()
	if pNotification:GetTypeName() == "NOTIFICATION_USER_DEFINED_6" then
		DB_BR.ChangeVisibility(playerID, x, y, BR_DefenderRadius, false)
	elseif pNotification:GetTypeName() == "NOTIFICATION_USER_DEFINED_7" then
		DB_BR.ChangeVisibility(playerID, x, y, BR_CityCaptureRadius, false)
	elseif pNotification:GetTypeName() == "NOTIFICATION_USER_DEFINED_8" then
		DB_BR.ChangeVisibility(playerID, x, y, BR_NuclearRadius, false)
	elseif pNotification:GetTypeName() == "NOTIFICATION_USER_DEFINED_9" then
		DB_BR.ChangeVisibility(playerID, x, y, BR_ThermonuclearRadius, false)
	end
end


function Initialize()
	Events.Combat.Add(BR_Combat)
	Events.NotificationAdded.Add(BR_OnNotificationAdded)
	Events.NotificationDismissed.Add(BR_OnNotificationDismissed)
	print("BattleNotifications.lua - init")
end

Initialize()
