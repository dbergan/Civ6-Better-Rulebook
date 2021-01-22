if not ExposedMembers.DB_BR then ExposedMembers.DB_BR = {} end
local DB_BR = ExposedMembers.DB_BR
BR_RevealedPlots = {}

function ChangeVisibility(PlayerID, X, Y, Radius, Visibility)
	local Vis = PlayersVisibility[PlayerID]
	local Center = Map.GetPlot(X, Y)
	local PlotTable = GetPlotTable(Center, Radius)
	
	for _, TempPlot in pairs(PlotTable) do
		if Visibility == true and Vis:IsVisible(TempPlot:GetX(), TempPlot:GetY()) == false then
			-- Making Visible
			if not BR_RevealedPlots[PlayerID] then BR_RevealedPlots[PlayerID] = {} end
			Vis:ChangeVisibilityCount(TempPlot:GetIndex(), 1)
			table.insert(BR_RevealedPlots[PlayerID], TempPlot:GetIndex())

		elseif Visibility == false and Vis:IsVisible(TempPlot:GetX(), TempPlot:GetY()) == true then
			-- Making Invisible
			Vis:ChangeVisibilityCount(TempPlot:GetIndex(), -1)

		end
    end
end

function GetPlotTable(Center, Radius)
	local TempTable = {}
	if Center ~= nil then
		local x, y = Center:GetX(), Center:GetY()
		for TempX = (Radius * -1), Radius do
			for TempY = (Radius * -1), Radius do
				local TempPlot = Map.GetPlotXYWithRangeCheck(x, y, TempX, TempY, Radius)
				if TempPlot then
					table.insert(TempTable, TempPlot)
				end
			end
		end
	end
	return TempTable
end

function HideRevealedBattleNotificationTiles(PlayerID)
	local Vis = PlayersVisibility[PlayerID]
	for _, value in pairs(BR_RevealedPlots[PlayerID]) do
		local TempPlot = Map.GetPlotByIndex(value)
		if Vis:IsVisible(TempPlot:GetX(), TempPlot:GetY()) == true then
			Vis:ChangeVisibilityCount(value, -1)
		end
	end
	BR_RevealedPlots[PlayerID] = {}
end

function Initialize()
	-- exposing function to BattleNotifications.lua
	DB_BR.ChangeVisibility = ChangeVisibility
	DB_BR.HideRevealedBattleNotificationTiles = HideRevealedBattleNotificationTiles
print("BR_BattleNotifications_Gameplay.lua - init")
end
Initialize()