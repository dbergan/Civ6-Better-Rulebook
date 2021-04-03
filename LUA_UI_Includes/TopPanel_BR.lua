-- DB - more yield precision [ALL]
-- function copied from G:\SteamLibrary\steamapps\common\Sid Meier's Civilization VI\Base\Assets\UI\TopPanel.lua
function FormatValuePerTurn( value:number )
	if(value == 0) then
		return Locale.ToNumber(value);
	else
-- DB
		return Locale.Lookup("{1: number +#,###.##;-#,###.##}", value);
-- /DB
	end
end


-- DB - extend tourism tooltip [BR]
-- function copied from G:\SteamLibrary\steamapps\common\Sid Meier's Civilization VI\Base\Assets\UI\TopPanel.lua

if not ExposedMembers.DB_YT then ExposedMembers.DB_YT = {} end
local DB_YT = ExposedMembers.DB_YT

function RefreshYields()
	local ePlayer		:number = Game.GetLocalPlayer();
	local localPlayer	:table= nil;
	if ePlayer ~= -1 then
		localPlayer = Players[ePlayer];
		if localPlayer == nil then
			return;
		end
	else
		return;
	end

	---- SCIENCE ----
	if GameCapabilities.HasCapability("CAPABILITY_SCIENCE") and GameCapabilities.HasCapability("CAPABILITY_DISPLAY_TOP_PANEL_YIELDS") then
		m_ScienceYieldButton = m_ScienceYieldButton or m_YieldButtonSingleManager:GetInstance();
		local playerTechnology		:table	= localPlayer:GetTechs();
		local currentScienceYield	:number = playerTechnology:GetScienceYield();
		m_ScienceYieldButton.YieldPerTurn:SetText( FormatValuePerTurn(currentScienceYield) );	

		m_ScienceYieldButton.YieldBacking:SetToolTipString( GetScienceTooltip() );
		m_ScienceYieldButton.YieldIconString:SetText("[ICON_ScienceLarge]");
		m_ScienceYieldButton.YieldButtonStack:CalculateSize();
	end	
	
	---- CULTURE----
	if GameCapabilities.HasCapability("CAPABILITY_CULTURE") and GameCapabilities.HasCapability("CAPABILITY_DISPLAY_TOP_PANEL_YIELDS") then
		m_CultureYieldButton = m_CultureYieldButton or m_YieldButtonSingleManager:GetInstance();
		local playerCulture			:table	= localPlayer:GetCulture();
		local currentCultureYield	:number = playerCulture:GetCultureYield();
		m_CultureYieldButton.YieldPerTurn:SetText( FormatValuePerTurn(currentCultureYield) );	
		m_CultureYieldButton.YieldPerTurn:SetColorByName("ResCultureLabelCS");

		m_CultureYieldButton.YieldBacking:SetToolTipString( GetCultureTooltip() );
		m_CultureYieldButton.YieldBacking:SetColor(UI.GetColorValueFromHexLiteral(0x99fe2aec));
		m_CultureYieldButton.YieldIconString:SetText("[ICON_CultureLarge]");
		m_CultureYieldButton.YieldButtonStack:CalculateSize();
	end

	---- FAITH ----
	if GameCapabilities.HasCapability("CAPABILITY_FAITH") and GameCapabilities.HasCapability("CAPABILITY_DISPLAY_TOP_PANEL_YIELDS") then
		m_FaithYieldButton = m_FaithYieldButton or m_YieldButtonDoubleManager:GetInstance();
		local playerReligion		:table	= localPlayer:GetReligion();
		local faithYield			:number = playerReligion:GetFaithYield();
		local faithBalance			:number = playerReligion:GetFaithBalance();
		m_FaithYieldButton.YieldBalance:SetText( Locale.ToNumber(faithBalance, "#,###.#") );	
		m_FaithYieldButton.YieldPerTurn:SetText( FormatValuePerTurn(faithYield) );
		m_FaithYieldButton.YieldBacking:SetToolTipString( GetFaithTooltip() );
		m_FaithYieldButton.YieldIconString:SetText("[ICON_FaithLarge]");
		m_FaithYieldButton.YieldButtonStack:CalculateSize();	
	end

	---- GOLD ----
	if GameCapabilities.HasCapability("CAPABILITY_GOLD") and GameCapabilities.HasCapability("CAPABILITY_DISPLAY_TOP_PANEL_YIELDS") then
		m_GoldYieldButton = m_GoldYieldButton or m_YieldButtonDoubleManager:GetInstance();
		local playerTreasury:table	= localPlayer:GetTreasury();
		local goldYield		:number = playerTreasury:GetGoldYield() - playerTreasury:GetTotalMaintenance();
		local goldBalance	:number = math.floor(playerTreasury:GetGoldBalance());
		m_GoldYieldButton.YieldBalance:SetText( Locale.ToNumber(goldBalance, "#,###.#") );
		m_GoldYieldButton.YieldBalance:SetColorByName("ResGoldLabelCS");	
		m_GoldYieldButton.YieldPerTurn:SetText( FormatValuePerTurn(goldYield) );
		m_GoldYieldButton.YieldIconString:SetText("[ICON_GoldLarge]");
		m_GoldYieldButton.YieldPerTurn:SetColorByName("ResGoldLabelCS");	

		m_GoldYieldButton.YieldBacking:SetToolTipString( GetGoldTooltip() );
		m_GoldYieldButton.YieldBacking:SetColorByName("ResGoldLabelCS");
		m_GoldYieldButton.YieldButtonStack:CalculateSize();	
	end

	---- TOURISM ----
	if GameCapabilities.HasCapability("CAPABILITY_TOURISM") and GameCapabilities.HasCapability("CAPABILITY_DISPLAY_TOP_PANEL_YIELDS") then
		m_TourismYieldButton = m_TourismYieldButton or m_YieldButtonSingleManager:GetInstance();
		local tourismRate = Round(localPlayer:GetStats():GetTourism(), 1);
		local tourismRateTT:string = Locale.Lookup("LOC_WORLD_RANKINGS_OVERVIEW_CULTURE_TOURISM_RATE", tourismRate);
		local tourismBreakdown = localPlayer:GetStats():GetTourismToolTip();
		if(tourismBreakdown and #tourismBreakdown > 0) then
			tourismRateTT = tourismRateTT .. "[NEWLINE][NEWLINE]" .. tourismBreakdown;
		end
-- DB - expand tourism tooltip [BR]
		if Modding.IsModActive('238f9daf-7d74-429b-84b9-564ca3e79ac7') then
			local LocalPlayerCulture = localPlayer:GetCulture()
			tourismRateTT = tourismRateTT .. Locale.Lookup("LOC_BR_TOURISM_TOOLTIP_HEADER")
			-- Domestic Tourists: 153
			tourismRateTT = tourismRateTT .. Locale.Lookup("LOC_BR_MY_DOMESTIC_TOURISTS", string.format("%d", LocalPlayerCulture:GetStaycationers()))

			-- Visting Tourists: 12
			local OtherPlayers = PlayerManager.GetWasEverAliveMajors()
			local LoopTT = ""
			local LoopSum = 0
			for _, LoopPlayer in ipairs(OtherPlayers) do
				local LoopPlayerID = LoopPlayer:GetID()
				if ePlayer ~= LoopPlayerID and localPlayer:GetDiplomacy():HasMet(LoopPlayerID) == true then
					local Temp = LocalPlayerCulture:GetTouristsFromTooltip(LoopPlayerID)
					local z = 0
					local PerTurn = 0
					local Lifetime = 0
					for y in string.gmatch(Temp, '(%d+)') do
						if z == 0 then
							PerTurn = y
						else
							Lifetime = y
						end
						z = z + 1
					end
					LoopSum = LoopSum + Lifetime
					local LoopCivName = Locale.Lookup("LOC_" .. PlayerConfigurations[LoopPlayerID]:GetCivilizationTypeName() .. "_NAME")
					-- From Egypt: 63 (+3/turn)
					LoopTT = LoopTT .. "[NEWLINE]" .. Locale.Lookup("LOC_BR_VISITING_TOURIST_LINE", LoopCivName, Lifetime, PerTurn)
				end
			end
			tourismRateTT = tourismRateTT .. "[NEWLINE][NEWLINE]" .. Locale.Lookup("LOC_BR_MY_VISITING_TOURISTS", string.format("%d", LocalPlayerCulture:GetTouristsTo()))
			tourismRateTT = tourismRateTT .. LoopTT
			tourismRateTT = tourismRateTT .. "[NEWLINE]" .. Locale.Lookup("LOC_BR_TOTAL_LINE", string.format("%d", LoopSum))

			-- My Citizens Traveling Elsewhere: 54
			LoopTT = ""
			LoopSum = 0
			for _, LoopPlayer in ipairs(OtherPlayers) do
				local LoopPlayerID = LoopPlayer:GetID()
				if ePlayer ~= LoopPlayerID and localPlayer:GetDiplomacy():HasMet(LoopPlayerID) == true then
					local LoopPlayerCulture = LoopPlayer:GetCulture()
					local Temp = LoopPlayerCulture:GetTouristsFromTooltip(ePlayer)
					local z = 0
					local PerTurn = 0
					local Lifetime = 0
					for y in string.gmatch(Temp, '(%d+)') do
						if z == 0 then
							PerTurn = y
						else
							Lifetime = y
						end
						z = z + 1
					end
					LoopSum = LoopSum + Lifetime
					local LoopCivName = Locale.Lookup("LOC_" .. PlayerConfigurations[LoopPlayerID]:GetCivilizationTypeName() .. "_NAME")
					-- To Egypt: 22 (+2/turn)
					LoopTT = LoopTT .. "[NEWLINE]" .. Locale.Lookup("LOC_BR_TRAVELING_TOURIST_LINE", LoopCivName, Lifetime, PerTurn)
				end
			end
			tourismRateTT = tourismRateTT .. "[NEWLINE][NEWLINE]" .. Locale.Lookup("LOC_BR_MY_TRAVELING_TOURISTS")
			tourismRateTT = tourismRateTT .. LoopTT
			tourismRateTT = tourismRateTT .. "[NEWLINE]" .. Locale.Lookup("LOC_BR_TOTAL_LINE", string.format("%d", LoopSum))
		
			tourismRateTT = tourismRateTT .. "[NEWLINE][NEWLINE]" .. Locale.Lookup("LOC_BR_CULTURE_VICTORY")
		end
-- /DB
		
		m_TourismYieldButton.YieldPerTurn:SetText( tourismRate );	
		m_TourismYieldButton.YieldBacking:SetToolTipString(tourismRateTT);
		m_TourismYieldButton.YieldPerTurn:SetColorByName("ResTourismLabelCS");
		m_TourismYieldButton.YieldBacking:SetColorByName("ResTourismLabelCS");
		m_TourismYieldButton.YieldIconString:SetText("[ICON_TourismLarge]");
		if (tourismRate > 0) then
			m_TourismYieldButton.Top:SetHide(false);
		else
			m_TourismYieldButton.Top:SetHide(true);
		end 
	end

	Controls.YieldStack:CalculateSize();
	Controls.StaticInfoStack:CalculateSize();
	Controls.InfoStack:CalculateSize();

	Controls.YieldStack:RegisterSizeChanged( RefreshResources );
	Controls.StaticInfoStack:RegisterSizeChanged( RefreshResources );
end

-- DB - Refresh science/culture yields after tech/civic changed
PRIOR_LateInitialize = LateInitialize
function LateInitialize()
	if GameConfiguration.GetValue("YT_LEARN_FROM_OTHER_CIVS") then
		Events.CivicChanged.Add(OnRefreshYields)
		Events.ResearchChanged.Add(OnRefreshYields)
	end
	PRIOR_LateInitialize()
end