-- AiListsAndFavoredItems
-- Author: beren
-- DateCreated: 5/20/2024 1:00:06 PM
--------------------------------------------------------------
-- AILists
-- Author: beren
-- DateCreated: 5/18/2024 12:56:47 AM
--------------------------------------------------------------
INSERT INTO AiListTypes
			(ListType)
VALUES		("BOPResolutions"),
			("BOPDiscussions"),
			("BOPDiplomacy"),
			("BOPYields"),
			("BOPOperations"),
			("BOPPseudoYields");

INSERT INTO AiLists
			(ListType, AgendaType, System)
VALUES		("BOPResolutions", "TRAIT_AGENDA_BOP", "Resolutions"),
			("BOPDiscussions", "TRAIT_AGENDA_BOP", "Discussions"),
			("BOPDiplomacy", "TRAIT_AGENDA_BOP", "DiplomaticActions"),
			("BOPYields", "TRAIT_AGENDA_BOP", "Yields"),
			("BOPOperations", "TRAIT_AGENDA_BOP", "AiOperationTypes"),
			("BOPPseudoYields", "TRAIT_AGENDA_BOP", "PseudoYields"),
			("MilitaryVictoryYields", "TRAIT_AGENDA_BOP", "Yields"),
			("MilitaryVictoryFavoredCommemorations", "TRAIT_AGENDA_BOP", "Commemorations"),
			("MilitaryVictoryOperations", "TRAIT_AGENDA_BOP", "AiOperationTypes"),
			("ExpansionistCitySettlement", "TRAIT_AGENDA_BOP", "SettlementPreferences"),
			("ExpansionSettlementPreferences", "TRAIT_AGENDA_BOP", "PlotEvaluations");

INSERT INTO AiLists
			(ListType, AgendaType, System)
VALUES		("BOPResolutions", "AGENDA_BOP", "Resolutions"),
			("BOPDiscussions", "AGENDA_BOP", "Discussions"),
			("BOPDiplomacy", "AGENDA_BOP", "DiplomaticActions"),
			("BOPYields", "AGENDA_BOP", "Yields"),
			("BOPOperations", "AGENDA_BOP", "AiOperationTypes"),
			("BOPPseudoYields", "AGENDA_BOP", "PseudoYields"),
			("MilitaryVictoryYields", "AGENDA_BOP", "Yields"),
			("MilitaryVictoryFavoredCommemorations", "AGENDA_BOP", "Commemorations"),
			("ExpansionistCitySettlement", "AGENDA_BOP", "SettlementPreferences"),
			("ExpansionSettlementPreferences", "AGENDA_BOP", "PlotEvaluations");

---------

UPDATE DiplomaticActions
SET "NoCurrentDenunciation" = 1
Where DiplomaticActionType = "DIPLOACTION_ALLIANCE";

UPDATE DiplomaticActions
SET "NoCurrentDenunciation" = 1
Where DiplomaticActionType = "DIPLOACTION_ALLIANCE_RELIGIOUS";

UPDATE DiplomaticActions
SET "NoCurrentDenunciation" = 1
Where DiplomaticActionType = "DIPLOACTION_ALLIANCE_CULTURAL";

UPDATE DiplomaticActions
SET "NoCurrentDenunciation" = 1
Where DiplomaticActionType = "DIPLOACTION_ALLIANCE_ECONOMIC";

UPDATE DiplomaticActions
SET "NoCurrentDenunciation" = 1
Where DiplomaticActionType = "DIPLOACTION_ALLIANCE_MILITARY";

UPDATE DiplomaticActions
SET "NoCurrentDenunciation" = 1
Where DiplomaticActionType = "DIPLOACTION_ALLIANCE_RESEARCH";

UPDATE DiplomaticActions
SET "NoCurrentDenunciation" = 1
Where DiplomaticActionType = "DIPLOACTION_DECLARE_FRIENDSHIP";

UPDATE DiplomaticStateActions
SET "Worth" = 100
WHERE StateType = "DIPLO_STATE_DENOUNCED" and DiplomaticActionType = "DIPLOACTION_DECLARE_SURPRISE_WAR";

UPDATE DiplomaticStateActions
SET "Worth" = 100
WHERE StateType = "DIPLO_STATE_DENOUNCED" and DiplomaticActionType = "DIPLOACTION_DECLARE_FORMAL_WAR";

UPDATE DiplomaticStateActions
SET "Worth" = 100
WHERE StateType = "DIPLO_STATE_DENOUNCED" and DiplomaticActionType = "DIPLOACTION_DECLARE_HOLY_WAR";

UPDATE DiplomaticStateActions
SET "Worth" = 100
WHERE StateType = "DIPLO_STATE_DENOUNCED" and DiplomaticActionType = "DIPLOACTION_DECLARE_LIBERATION_WAR";

UPDATE DiplomaticStateActions
SET "Worth" = 100
WHERE StateType = "DIPLO_STATE_DENOUNCED" and DiplomaticActionType = "DIPLOACTION_DECLARE_RECONQUEST_WAR";

UPDATE DiplomaticStateActions
SET "Worth" = 100
WHERE StateType = "DIPLO_STATE_DENOUNCED" and DiplomaticActionType = "DIPLOACTION_DECLARE_PROTECTORATE_WAR";

UPDATE DiplomaticStateActions
SET "Worth" = 100
WHERE StateType = "DIPLO_STATE_DENOUNCED" and DiplomaticActionType = "DIPLOACTION_DECLARE_TERRITORIAL_WAR";

UPDATE DiplomaticStateActions
SET "Worth" = 100
WHERE StateType = "DIPLO_STATE_DENOUNCED" and DiplomaticActionType = "DIPLOACTION_DECLARE_WAR_OF_RETRIBUTION";

UPDATE DiplomaticStateActions
SET "Worth" = 100
WHERE StateType = "DIPLO_STATE_DENOUNCED" and DiplomaticActionType = "DIPLOACTION_DECLARE_GOLDEN_AGE_WAR";

-----------

INSERT INTO AiFavoredItems
			(ListType, Item, Favored, Value)
VALUES		("BOPResolutions", "WC_RES_BORDER_CONTROL", 1, 0),
			("BOPDiscussions", "WC_EMERGENCY_MILITARY", 1, 0.3),
			("BOPDiscussions", "WC_EMERGENCY_RELIGIOUS", 1, 0.3),
			("BOPDiscussions", "WC_EMERGENCY_NUCLEAR", 1, 0.3),
			("BOPDiscussions", "WC_EMERGENCY_SEND_MILITARY_AID", 1, 0.3),
			("BOPDiscussions", "WC_EMERGENCY_CAPTURED_CITY_STATE", 1, 0.3),
			("BOPDiscussions", "WC_EMERGENCY_SETTLED_CITY", 1, 0.3),
			("BOPDiplomacy", "DIPLOACTION_ALLIANCE_MILITARY", 1, 0),
			("BOPDiplomacy", "DIPLOACTION_ALLIANCE_TEAMUP", 1, 0),
			("BOPDiplomacy", "DIPLOACTION_DECLARE_SURPRISE_WAR", 0, -200),
			("BOPDiplomacy", "DIPLOACTION_USE_NUCLEAR_WEAPON", 1, 100),
			("BOPDiplomacy", "DIPLOACTION_DECLARE_COLONIAL_WAR", 1, 0.3),
			("BOPDiplomacy", "DIPLOACTION_DECLARE_LIBERATION_WAR", 1, 0.3),
			("BOPDiplomacy", "DIPLOACTION_DECLARE_RECONQUEST_WAR", 1, 0.3),
			("BOPDiplomacy", "DIPLOACTION_JOINT_WAR", 1, 300),
			("BOPDiplomacy", "DIPLOACTION_THIRD_PARTY_WAR", 1, 3),
			("BOPDiplomacy", "DIPLOACTION_MILITARY_REQUEST", 1, 0.3),
			("BOPDiplomacy", "DIPLOACTION_REQUEST_ASSISTANCE", 1, 0),
			("BOPDiplomacy", "DIPLOACTION_DECLARE_IDEOLOGICAL_WAR", 1, 0.3),
			("BOPDiplomacy", "DIPLOACTION_DECLARE_FORMAL_WAR", 1, 100),
			("BOPDiplomacy", "DIPLOACTION_DECLARE_GOLDEN_AGE_WAR", 1, 0.3),
			("BOPDiplomacy", "DIPLOACTION_DECLARE_TERRITORIAL_WAR", 1, 0.3),
			("BOPDiplomacy", "DIPLOACTION_DECLARE_WAR_MINOR_CIV", 1, 100),
			("BOPOperations", "CITY_ASSAULT", 1, 4),
			("BOPOperations", "SUPER_LONG_RANGE_ATTACK", 1, 4),
			("BOPPseudoYields", "PSEUDOYIELD_NUCLEAR_WEAPON", 1, 100),
			("BOPPseudoYields", "PSEUDOYIELD_UNIT_COMBAT", 1, 100),
			("BOPPseudoYields", "PSEUDOYIELD_CITY_BASE", 1, 100);
	
UPDATE AiOperationDefs
Set MinOddsOfSuccess = 0
Where BehaviorTree = "Siege City Assault";
