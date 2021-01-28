-- Allow Airstrips on resources (nothing in Civilopedia says that you can't build an airstrip on wheat, yet you cannot)
INSERT OR REPLACE INTO Improvement_ValidResources (ImprovementType, ResourceType, MustRemoveFeature)
	SELECT 'IMPROVEMENT_AIRSTRIP', ResourceType, 0 FROM Resources ;

-- Allow Forts on resources
INSERT OR REPLACE INTO Improvement_ValidResources (ImprovementType, ResourceType, MustRemoveFeature)
	SELECT 'IMPROVEMENT_FORT', ResourceType, 0 FROM Resources ;

-- Allow Missile Silos on resources
INSERT OR REPLACE INTO Improvement_ValidResources (ImprovementType, ResourceType, MustRemoveFeature)
	SELECT 'IMPROVEMENT_MISSILE_SILO', ResourceType, 0 FROM Resources ;

-- Allow IMPROVEMENT_ROMAN_FORT on resources
INSERT OR REPLACE INTO Improvement_ValidResources (ImprovementType, ResourceType, MustRemoveFeature)
	SELECT 'IMPROVEMENT_ROMAN_FORT', ResourceType, 0 FROM Resources ;

-- Allow IMPROVEMENT_MAORI_PA on resources
INSERT OR REPLACE INTO Improvement_ValidResources (ImprovementType, ResourceType, MustRemoveFeature)
	SELECT 'IMPROVEMENT_MAORI_PA', ResourceType, 0 FROM Resources ;

-- Allow IMPROVEMENT_ALCAZAR on resources
INSERT OR REPLACE INTO Improvement_ValidResources (ImprovementType, ResourceType, MustRemoveFeature)
	SELECT 'IMPROVEMENT_ALCAZAR', ResourceType, 0 FROM Resources ;

