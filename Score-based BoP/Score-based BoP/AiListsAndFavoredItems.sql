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
			("BOPYields");

INSERT INTO AiLists
			(ListType, AgendaType, System)
VALUES		("BOPResolutions", "TRAIT_AGENDA_BOP", "Resolutions"),
			("BOPDiscussions", "TRAIT_AGENDA_BOP", "Discussions"),
			("BOPDiplomacy", "TRAIT_AGENDA_BOP", "DiplomaticActions"),
			("BOPYields", "TRAIT_AGENDA_BOP", "Yields"),
			("AggressivePseudoYields", "TRAIT_AGENDA_BOP", "PseudoYields"),
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
			("AggressivePseudoYields", "AGENDA_BOP", "PseudoYields"),
			("MilitaryVictoryYields", "AGENDA_BOP", "Yields"),
			("MilitaryVictoryFavoredCommemorations", "AGENDA_BOP", "Commemorations"),
			("MilitaryVictoryOperations", "AGENDA_BOP", "AiOperationTypes"),
			("ExpansionistCitySettlement", "AGENDA_BOP", "SettlementPreferences"),
			("ExpansionSettlementPreferences", "AGENDA_BOP", "PlotEvaluations");
			
INSERT INTO diplomaticstateactions
			(StateType, DiplomaticActionType, AiAllowed, Worth, Cost)
VALUES		("DIPLO_STATE_DENOUNCED", "DIPLOACTION_JOINT_WAR", 1, 50, 0);

-----------

INSERT INTO AiFavoredItems
			(ListType, Item, Favored, Value)
VALUES		("BOPResolutions", "WC_RES_BORDER_CONTROL", 1, 0),
			("BOPResolutions", "WC_RES_MERCENARY_COMPANIES", 1, 0),
			("BOPDiscussions", "WC_EMERGENCY_MILITARY", 1, 0),
			("BOPDiscussions", "WC_EMERGENCY_BACKSTAB", 1, 0),
			("BOPDiplomacy", "DIPLOACTION_ALLIANCE_MILITARY", 1, 0),
			("BOPDiplomacy", "DIPLOACTION_ALLIANCE_CULTURAL", 1, 0),
			("BOPDiplomacy", "DIPLOACTION_ALLIANCE_ECONOMIC", 1, 0),
			("BOPDiplomacy", "DIPLOACTION_ALLIANCE_RELIGIOUS", 1, 0),
			("BOPDiplomacy", "DIPLOACTION_ALLIANCE_RESEARCH", 1, 0),
			("BOPDiplomacy", "DIPLOACTION_ALLIANCE_TEAMUP", 1, 0),
			("BOPDiplomacy", "DIPLOACTION_DECLARE_SURPRISE_WAR", 1, 0),
			("BOPDiplomacy", "DIPLOACTION_USE_NUCLEAR_WEAPON", 1, 0),
			("BOPDiplomacy", "DIPLOACTION_DECLARE_FRIENDSHIP", 1, 0),
			("BOPDiplomacy", "DIPLOACTION_DIPLOMATIC_DELEGATION", 1, 0),
			("BOPDiplomacy", "DIPLOACTION_RESIDENT_EMBASSY", 1, 0),
			("BOPDiplomacy", "DIPLOACTION_DECLARE_COLONIAL_WAR", 1, 0),
			("BOPDiplomacy", "DIPLOACTION_LIBERATE_CITY", 1, 0),
			("BOPDiplomacy", "DIPLOACTION_DECLARE_LIBERATION_WAR", 1, 0),
			("BOPDiplomacy", "DIPLOACTION_DECLARE_RECONQUEST_WAR", 1, 0),
			("BOPDiplomacy", "DIPLOACTION_RESIDENT_EMBASSY", 1, 0),
			("BOPDiplomacy", "DIPLOACTION_JOINT_WAR", 1, 0),
			("BOPDiplomacy", "DIPLOACTION_THIRD_PARTY_WAR", 1, 0),
			("BOPDiplomacy", "DIPLOACTION_MILITARY_REQUEST", 1, 0),
			("BOPDiplomacy", "DIPLOACTION_REQUEST_ASSISTANCE", 1, 0),
			("BOPDiplomacy", "DIPLOACTION_DECLARE_IDEOLOGICAL_WAR", 1, 0),
			("BOPDiplomacy", "DIPLOACTION_DECLARE_FORMAL_WAR", 1, 0),
			("BOPDiplomacy", "DIPLOACTION_DECLARE_GOLDEN_AGE_WAR", 1, 0),
			("BOPDiplomacy", "DIPLOACTION_DECLARE_TERRITORIAL_WAR", 1, 0),
			("BOPDiplomacy", "DIPLOACTION_DECLARE_WAR_MINOR_CIV", 1, 0),
			("AggressivePseudoYields", "PSEUDOYIELD_NUCLEAR_WEAPON", 1, 25);
	
UPDATE AiFavoredItems
SET Value = 4
Where ListType = "MilitaryVictoryOperations";