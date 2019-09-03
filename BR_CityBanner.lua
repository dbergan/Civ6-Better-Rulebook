include("CityBannerManager");

-- ===========================================================================
-- Override base game
-- ===========================================================================

function CityBanner:UpdateStats()
	local pDistrict:table = self:GetDistrict();
	local localPlayerID:number = Game.GetLocalPlayer();

	if (pDistrict ~= nil) then

		if self.m_Type == BANNERTYPE_CITY_CENTER then

			local pCity				:table = self:GetCity();
			local iCityOwner		:number = pCity:GetOwner();
			local pCityGrowth		:table  = pCity:GetGrowth();
			local populationIM		:table;

			if (localPlayerID == iCityOwner) then
				self:UpdatePopulation(true, pCity, pCityGrowth);
				self:UpdateGovernor(pCity);
				self:UpdateProduction(pCity);
			else
				self:UpdatePopulation(false, pCity, pCityGrowth);
				self:UpdateGovernor(pCity);

				-- Espionage View should show a cities production if they have the proper diplo visibility
				if HasEspionageView(iCityOwner, pCity:GetID()) then
					self:UpdateProduction(pCity);
				elseif self.m_StatProductionIM ~= nil then
					self.m_StatProductionIM:ResetInstances();
				end
			end

			--- DEFENSE INFO ---
			local districtHitpoints		:number = pDistrict:GetMaxDamage(DefenseTypes.DISTRICT_GARRISON);
			local currentDistrictDamage :number = pDistrict:GetDamage(DefenseTypes.DISTRICT_GARRISON);
			local wallHitpoints			:number = pDistrict:GetMaxDamage(DefenseTypes.DISTRICT_OUTER);
			local currentWallDamage		:number = pDistrict:GetDamage(DefenseTypes.DISTRICT_OUTER);
			local garrisonDefense		:number = math.floor(pDistrict:GetDefenseStrength() + 0.5);

-- ********** BR ************** -- 
			local damagedDistrictCS = currentDistrictDamage - 11 ;
			if damagedDistrictCS > 0 then
				damagedDistrictCS = math.floor(damagedDistrictCS / 20) + 1 ;
				if damagedDistrictCS > 10 then
					damagedDistrictCS = 10 ;
				end
				garrisonDefense = garrisonDefense - damagedDistrictCS ;
			end

			local cityPlot = Map.GetPlot(self.m_PlotX, self.m_PlotY);
			if (cityPlot ~= nil) then
				local hillDef = cityPlot:GetDefenseModifier() ;
				garrisonDefense = garrisonDefense + hillDef ;
			end
-- ********** BR ************** -- 

			local garrisonDefString :string = Locale.Lookup("LOC_CITY_BANNER_GARRISON_DEFENSE_STRENGTH");
			local defValue = garrisonDefense;
			
			
			local defTooltip = garrisonDefString .. ": " .. garrisonDefense;
			local healthTooltip :string = Locale.Lookup("LOC_CITY_BANNER_GARRISON_HITPOINTS", ((districtHitpoints-currentDistrictDamage) .. "/" .. districtHitpoints));
			if (wallHitpoints > 0) then
				self.m_Instance.DefenseIcon:SetHide(true);
				self.m_Instance.ShieldsIcon:SetHide(false);
				self.m_Instance.CityDefenseBarBacking:SetHide(false);
				self.m_Instance.CityHealthBarBacking:SetHide(false);
				self.m_Instance.CityDefenseBar:SetHide(false);
				healthTooltip = healthTooltip .. "[NEWLINE]" .. Locale.Lookup("LOC_CITY_BANNER_OUTER_DEFENSE_HITPOINTS", ((wallHitpoints-currentWallDamage) .. "/" .. wallHitpoints));
				self.m_Instance.CityDefenseBar:SetPercent((wallHitpoints-currentWallDamage) / wallHitpoints);
				self.m_Instance.CityDefenseBarBacking:SetToolTipString(healthTooltip);
			else
				self.m_Instance.CityDefenseBar:SetHide(true);
				self.m_Instance.CityDefenseBarBacking:SetHide(true);
				self.m_Instance.CityHealthBarBacking:SetHide(true);
			end
			self.m_Instance.DefenseNumber:SetText(defValue);
			self.m_Instance.DefenseNumber:SetToolTipString(defTooltip);
			self.m_Instance.CityHealthBarBacking:SetToolTipString(healthTooltip);
			self.m_Instance.CityHealthBarBacking:SetHide(false);
			if(districtHitpoints > 0) then
				self.m_Instance.CityHealthBar:SetPercent((districtHitpoints-currentDistrictDamage) / districtHitpoints);	
			else
				self.m_Instance.CityHealthBar:SetPercent(0);	
			end
			self:SetHealthBarColor();	
			
			if (((districtHitpoints-currentDistrictDamage) / districtHitpoints) == 1 and wallHitpoints == 0) then
				self.m_Instance.CityHealthBar:SetHide(true);
				self.m_Instance.CityHealthBarBacking:SetHide(true);
			else
				self.m_Instance.CityHealthBar:SetHide(false);
				self.m_Instance.CityHealthBarBacking:SetHide(false);
			end

			self:UpdateDetails();
			--------------------------------------
		else -- it should be a miniBanner
			
			if (self.m_Type == BANNERTYPE_ENCAMPMENT) then 
				self:UpdateEncampmentBanner();
			elseif (self.m_Type == BANNERTYPE_AERODROME) then
				self:UpdateAerodromeBanner();
			elseif (self.m_Type == BANNERTYPE_OTHER_DISTRICT) then
				self:UpdateDistrictBanner();
			end
			
		end

	else  --it's a banner not associated with a district
		if (self.m_IsImprovementBanner) then
			local bannerPlot = Map.GetPlot(self.m_PlotX, self.m_PlotY);
			if (bannerPlot ~= nil) then
				if (self.m_Type == BANNERTYPE_AERODROME) then
					self:UpdateAerodromeBanner();
				elseif (self.m_Type == BANNERTYPE_MISSILE_SILO) then
					self:UpdateWMDBanner();
				end
			end
		end
	end
end
