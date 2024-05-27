-- edit_requirements
-- Author: beren
-- DateCreated: 5/20/2024 12:42:42 PM
--------------------------------------------------------------

UPDATE RequirementArguments
SET Value = -1.1
Where RequirementId = "REQUIRES_HAS_LOW_CULTURE" and Name = "YieldRatio";

UPDATE RequirementArguments
SET Value = 1.25
Where RequirementId = "REQUIRES_HAS_HIGH_CULTURE" and Name = "YieldRatio";

UPDATE RequirementArguments
SET Value = 1.25
Where RequirementId = "REQUIRES_HAS_HIGH_SCIENCE" and Name = "YieldRatio";

UPDATE RequirementArguments
SET Value = -1.1
Where RequirementId = "REQUIRES_HAS_LOW_SCIENCE" and Name = "YieldRatio";

UPDATE RequirementArguments
SET Value = 1.5
Where RequirementId = "REQUIRES_HAS_HIGH_FAITH" and Name = "YieldRatio";

UPDATE RequirementArguments
SET Value = -1.25
Where RequirementId = "REQUIRES_HAS_LOW_FAITH" and Name = "YieldRatio";

UPDATE RequirementArguments
SET Value = 1.5
Where RequirementId = "REQUIRES_HAS_HIGH_HAPPINESS" and Name = "YieldRatio";

UPDATE RequirementArguments
SET Value = -1.25
Where RequirementId = "REQUIRES_HAS_LOW_HAPPINESS" and Name = "YieldRatio";

UPDATE RequirementArguments
SET Value = 1.25
Where RequirementId = "REQUIRES_HAS_HIGH_INDUSTRY" and Name = "YieldRatio";

UPDATE RequirementArguments
SET Value = -1.1
Where RequirementId = "REQUIRES_HAS_LOW_INDUSTRY" and Name = "YieldRatio";

UPDATE RequirementArguments
SET Value = 1.25
Where RequirementId = "REQUIRES_HAS_HIGH_POPULATION" and Name = "PopulationRatio";

UPDATE RequirementArguments
SET Value = -1.25
Where RequirementId = "REQUIRES_HAS_LOW_POPULATION" and Name = "PopulationRatio";

UPDATE RequirementArguments
SET Value = 1.25
Where RequirementId = "REQUIRES_HAS_HIGH_STANDING_ARMY" and Name = "StrengthRatio";

UPDATE RequirementArguments
SET Value = -1.1
Where RequirementId = "REQUIRES_HAS_LOW_STANDING_ARMY" and Name = "StrengthRatio";