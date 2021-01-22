local pCurPlayerVisibility = PlayersVisibility[pPlayer:GetID()];
		if(pCurPlayerVisibility ~= nil) then
			pCurPlayerVisibility:RevealAllPlots();
		end


if (PlayersVisibility[eAttackingPlayer]:IsVisible(plotX, plotY)) then



local pPlayerVis:table = PlayersVisibility[ePlayer];

	local minix, miniy = GetMinimapMouseCoords( inputX, inputY );
	if (pPlayerVis ~= nil) then
		local wx, wy = TranslateMinimapToWorld(minix, miniy);
		local plotX, plotY = UI.GetPlotCoordFromWorld(wx, wy);
		local pPlot = Map.GetPlot(plotX, plotY);
		if (pPlot ~= nil) then
			local plotID = Map.GetPlotIndex(plotX, plotY);
			if pPlayerVis:IsRevealed




	local localPlayerVis: table = PlayersVisibility[localPlayerID];

	--Check to make sure everyone or the local player is the target
	if(targetID ~= PlayerTypes.NONE and targetID ~= localPlayerID) then return; end

	--Check to make sure local player has proper visibility to see this message
	if(visibility == RevealedState.VISIBLE and (not localPlayerVis:IsVisible(x, y))) then return; end
	if(visibility == RevealedState.REVEALED and (not localPlayerVis:IsRevealed(x,y))) then return; end




	local pPlayerVis = PlayersVisibility[eLocalPlayer];
	if pPlayerVis:IsUnitVisible(pUnit)












local playerCfg = PlayerConfigurations[playerID];
local playerPins = playerCfg:GetMapPins();

playerCfg:DeleteMapPin(pinID);
local pMapPin = pPlayerCfg:GetMapPin(hexX, hexY);

local activePlayerID = Game.GetLocalPlayer();
local pPlayerCfg = PlayerConfigurations[activePlayerID];
local pMapPin = pPlayerCfg:GetMapPinID(g_editPinID);




GameInfo.Units["UNIT_WARRIOR"].Index
GameInfo.Types["CIVIC_CRAFTSMANSHIP"].Hash
return GameInfo.Units[pUnit:GetUnitType()].UnitType


pMapPin:GetHexX()
pMapPin:GetHexY()
pMapPin:GetIconName()
pMapPin:IsVisible(localPlayerID);
pMapPin:GetName();
pMapPin:GetID();


MapTacks.IconType(pMapPin);
StackMapPin(pMapPin);
GetPinStack(pMapPin);


LuaEvents.MapPinPopup_RequestMapPin(pMapPin:GetHexX(), pMapPin:GetHexY());

local iconType = MapTacks.IconType(self:GetMapPin()) or MapTacks.STOCK;




local iconName = pMapPin:GetIconName();
local iconType = MapTacks.IconType(pMapPin);
local showMapPin = pMapPin:IsVisible(localPlayerID);
local nameString = pMapPin:GetName();
self:SetPosition( UI.GridToWorld( pMapPin:GetHexX(), pMapPin:GetHexY() ) );
flagInstance:SetPosition( UI.GridToWorld( pMapPin:GetHexX(), pMapPin:GetHexY() ) );





local notificationData :table = {};
notificationData[ParameterTypes.MESSAGE] = Locale.Lookup("LOC_NOTIFICATION_NEW_RELIC_MESSAGE", lockedRelics[relicRand].Name);
notificationData[ParameterTypes.SUMMARY] = Locale.Lookup("LOC_NOTIFICATION_NEW_RELIC_SUMMARY");
notificationData[CustomNotificationParameters.CivicDiscovered_CivicIndex] = lockedRelics[relicRand].Index;
NotificationManager.SendNotification(iPlayerID, NotificationTypes.CIVIC_DISCOVERED, notificationData);

local notificationData :table = {};
notificationData[ParameterTypes.MESSAGE] = Locale.Lookup("LOC_NOTIFICATION_NEW_RELIC_MESSAGE", lockedRelics[relicRand].Name);
notificationData[ParameterTypes.SUMMARY] = Locale.Lookup("LOC_NOTIFICATION_NEW_RELIC_SUMMARY");
notificationData[CustomNotificationParameters.CivicDiscovered_CivicIndex] = lockedRelics[relicRand].Index;
NotificationManager.SendNotification(iPlayerID, NotificationTypes.CIVIC_DISCOVERED, notificationData);


--[[
-- ===========================================================================
--	ENGINE Event
--	A notification was dismissed
-- ===========================================================================
function BN_OnNotificationDismissed( playerID:number, notificationID:number )

print(" ")
print("BN_OnNotificationDismissed playerID, notificationID", playerID, notificationID)


	if (playerID == Game.GetLocalPlayer()) then -- one of the ones we track?
		-- Don't try and get the Game Core notification object, it might be gone
		local notificationEntry:NotificationType = GetNotificationEntry( playerID, notificationID );
		if notificationEntry ~= nil then		
			--print("OnNotificationDismissed():",notificationID);	--debug
			local handler = notificationEntry.m_kHandlers;
			handler.Dismiss( playerID, notificationID );
		end		
		ProcessStackSizes();
		RealizeNotificationSize(playerID, notificationID);
	end
print("BN_OnNotificationDismissed end")
end

function BN_Combat(combatResult)

print("BN_Combat combatResult:", combatResult);
print("BN_Combat Z");

end

function BN_UnitDamageChanged(playerID : number, unitID : number, newDamage : number, oldDamage : number)

print("BN_UnitDamageChanged playerID, unitID, newDamage, oldDamage", playerID, unitID, newDamage, oldDamage);
DB_BN.ChangeVisibility(20, 20, true, 0) ;
print("BN_UnitDamageChanged Z");

end

function BN_UnitKilledInCombat(targetUnit)

print("BN_UnitKilledInCombat targetUnit:", targetUnit);
print("BN_UnitKilledInCombat Z");

end
--]]















function Initialize()
	Events.NotificationAdded.Add(				BN_OnNotificationAdded );
--[[
	Events.NotificationDismissed.Add(			BN_OnNotificationDismissed );

	Events.Combat.Add(BN_Combat)
	Events.UnitDamageChanged.Add(BN_UnitDamageChanged) ;
	Events.UnitKilledInCombat.Add(BN_UnitKilledInCombat) ;
--]]
	print("BattleNotifications.lua - init");
end









--[[
local function CombatNotificationTilesVisible( player )
print("") ;
print("CombatNotificationTilesVisible A") ;











local pPlayerID = Game.GetLocalPlayer();
print("pPlayerID", pPlayerID) ;

local pPlayerVis	:table	=	PlayersVisibility[pPlayerID];
print("pPlayerVis", pPlayerVis) ;

local pPlayerConfig	:table	=	PlayerConfigurations[pPlayerID];
print("pPlayerConfig", pPlayerConfig) ;

local pPlayerPins	:table	=	pPlayerConfig:GetMapPins();
print("pPlayerPins", pPlayerPins) ;

		if(pPlayerConfig ~= nil) then
			local pPlayerPins	:table  = pPlayerConfig:GetMapPins();
			for ii, mapPinCfg in pairs(pPlayerPins) do
				local pinID		:number = mapPinCfg:GetID();
				GetMapPinListEntry(iPlayer, pinID);
			end
		end


local playerID		:number = player:GetID();
local playerCfg		:table  = PlayerConfigurations[playerID];
local playerPins	:table  = playerCfg:GetMapPins();


local DBPlot = Map.GetPlot(pMapPin:GetHexX(), pMapPin:GetHexY());
print("") ;
print("DBPlot", DBPlot) ;
print("DBPlot:GetX()", DBPlot:GetX()) ;
print("DBPlot:GetY()", DBPlot:GetY()) ;
print("DBPlot:GetIndex()", DBPlot:GetIndex()) ;
print("") ;
pVis:ChangeVisibilityCount(475, 1);
print("CombatNotificationTilesVisible Z") ;
end

GameEvents.PlayerTurnStarted.Add(CombatNotificationTilesVisible);
--]]



--[[
print(" ") ;
print(" -pNotification:GetMessage()", pNotification:GetMessage()) ;
print(" -pNotification:GetID()", pNotification:GetID()) ;
print(" -pNotification:GetPlayerID()", pNotification:GetPlayerID()) ;
print(" -pNotification:GetGroup()", pNotification:GetGroup()) ;
print(" -pNotification:IsVisibleInUI()", pNotification:IsVisibleInUI()) ;

print(" -pNotification:GetValue(PARAM_DATA1)", pNotification:GetValue("PARAM_DATA1")) ;
print(" -pNotification:GetValue(PARAM_DATA2)", pNotification:GetValue("PARAM_DATA2")) ;
print(" -pNotification:GetValue(PARAM_DATA3)", pNotification:GetValue("PARAM_DATA3")) ;
print(" -pNotification:GetValue(PARAM_DATA4)", pNotification:GetValue("PARAM_DATA4")) ;
print(" -pNotification:GetValue(PARAM_DATA5)", pNotification:GetValue("PARAM_DATA5")) ;
print(" -pNotification:GetValue(PARAM_PLAYER0)", pNotification:GetValue("PARAM_PLAYER0")) ;
print(" -pNotification:GetValue(PARAM_PLAYER1)", pNotification:GetValue("PARAM_PLAYER1")) ;
print(" -pNotification:GetValue(PARAM_PLAYER2)", pNotification:GetValue("PARAM_PLAYER2")) ;
print(" -pNotification:GetValue(PARAM_PLAYER3)", pNotification:GetValue("PARAM_PLAYER3")) ;
print(" -pNotification:GetValue(PARAM_PLAYER4)", pNotification:GetValue("PARAM_PLAYER4")) ;


print(" -pNotification:GetEndTurnBlocking()", pNotification:GetEndTurnBlocking()) ;
print(" -EndTurnBlockingTypes.NO_ENDTURN_BLOCKING", EndTurnBlockingTypes.NO_ENDTURN_BLOCKING) ;
print(" -pNotification:GetEndTurnBlocking() == EndTurnBlockingTypes.NO_ENDTURN_BLOCKING", pNotification:GetEndTurnBlocking() == EndTurnBlockingTypes.NO_ENDTURN_BLOCKING) ;
print(" -pNotification:IsIconDisplayable()", pNotification:IsIconDisplayable()) ;
print(" -pNotification:IsValidForPhase()", pNotification:IsValidForPhase()) ;
print(" -pNotification:IsAutoNotify()", pNotification:IsAutoNotify()) ;
--]]





--[[
function BN_OnGameTurnStarted(turn)
print("BN_OnGameTurnStarted turn:", turn);
print("BN_OnGameTurnStarted Z");
end

function BN_PlayerTurnStartComplete(player)
print("BN_PlayerTurnStartComplete player:", player);
DB_BN.ChangeVisibility(10, 10, true, 0) ;
print("BN_PlayerTurnStartComplete Z");
end

function BN_PlayerTurnStarted(player)
print("BN_PlayerTurnStarted player:", player);
print("BN_PlayerTurnStarted Z");
end
--]]




function Initialize()
--[[
	GameEvents.OnGameTurnStarted.Add(BN_OnGameTurnStarted) ;
	GameEvents.PlayerTurnStartComplete.Add(BN_PlayerTurnStartComplete);
	GameEvents.PlayerTurnStarted.Add(BN_PlayerTurnStarted);
--]]
	-- exposing function to BattleNotifications.lua
	DB_BN.ChangeVisibility = ChangeVisibility;
print("BattleNotifications_Gameplay.lua - init");
end
Initialize();