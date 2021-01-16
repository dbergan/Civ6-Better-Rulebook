if not ExposedMembers.DB_BR then ExposedMembers.DB_BR = {} end;
local DB_BR = ExposedMembers.DB_BR;

-- From FearSunn's ReligionVisibilityScript
function ChangeVisibility(PlayerID, x, y, radius, visible)

	--print("ChangeVisibility: "..PlayerID.." "..tostring(visible));
	local pVis = PlayersVisibility[PlayerID];
	local pPlot = Map.GetPlot(x, y);
	local tPlots = GetValidPlotsInRadiusR(pPlot, radius);
	
	for _, pPickPlot in pairs(tPlots) do
		if visible == true then
			pVis:ChangeVisibilityCount(pPickPlot:GetIndex(), 1);
		else
			pVis:ChangeVisibilityCount(pPickPlot:GetIndex(), -1);
		end
    end
end

-- From FearSunn's ReligionVisibilityScript
function GetValidPlotsInRadiusR(pPlot, iRadius)
	local tTempTable = {}
	if pPlot ~= nil then
		local iPlotX, iPlotY = pPlot:GetX(), pPlot:GetY()
		for dx = (iRadius * -1), iRadius do
			for dy = (iRadius * -1), iRadius do
				local pNearPlot = Map.GetPlotXYWithRangeCheck(iPlotX, iPlotY, dx, dy, iRadius);
				if pNearPlot then
					table.insert(tTempTable, pNearPlot)
				end
			end
		end
	end
	return tTempTable;
end


function Initialize()
	-- exposing function to BattleNotifications.lua
	DB_BR.ChangeVisibility = ChangeVisibility;
print("BattleNotifications_Gameplay.lua - init");
end
Initialize();