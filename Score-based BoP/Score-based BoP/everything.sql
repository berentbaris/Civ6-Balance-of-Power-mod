-- everything
-- Author: beren
-- DateCreated: 5/20/2024 11:10:21 AM
--------------------------------------------------------------
-- score-based_agenda
-- Author: beren
-- DateCreated: 5/20/2024 11:06:55 AM
--------------------------------------------------------------

INSERT INTO Types
			(Type,							Kind	)
VALUES		('TRAIT_AGENDA_BOP',		'KIND_TRAIT'	);

INSERT INTO Agendas
			(AgendaType,			Name,							Description)
VALUES 		('AGENDA_BOP',	'LOC_AGENDA_BOP_NAME',	'LOC_AGENDA_BOP_DESCRIPTION'		);

INSERT INTO Traits				
			(TraitType,						Name,							Description)
VALUES		('TRAIT_AGENDA_BOP',		'LOC_AGENDA_BOP_NAME',	'LOC_AGENDA_BOP_DESCRIPTION'		);

INSERT INTO AgendaTraits
			(AgendaType,			TraitType					)
VALUES 		('AGENDA_BOP',	'TRAIT_AGENDA_BOP'	);

UPDATE HistoricalAgendas
SET AgendaType = "AGENDA_BOP";

INSERT INTO TraitModifiers
			(TraitType,						ModifierId								)
VALUES		('TRAIT_AGENDA_BOP',		'AGENDA_MODIFIER_BOP_UNHAPPY_VICTORY'	),
			('TRAIT_AGENDA_BOP',		'AGENDA_MODIFIER_BOP_UNHAPPY_SCORE'	),
			('TRAIT_AGENDA_BOP',		'AGENDA_MODIFIER_BOP_HAPPY'		),
			('TRAIT_AGENDA_BOP',		'TRAIT_ALLIANCE_POINTS_FROM_COMMON_FOE'),
			('TRAIT_AGENDA_BOP',		'TRAIT_ADJUST_ALLIED_WAR_DISCOUNT'),
			('TRAIT_AGENDA_BOP',		'NONAGENDA_IGNORE_WARMONGERING');
		
INSERT INTO Modifiers	
			(ModifierId,								ModifierType,									SubjectRequirementSetId			)
VALUES		('AGENDA_MODIFIER_BOP_UNHAPPY_VICTORY',		'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'REQSET_BOP_UNHAPPY_VICTORY'		),
			('AGENDA_MODIFIER_BOP_UNHAPPY_SCORE',		'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'REQSET_BOP_UNHAPPY_SCORE'		),
			('AGENDA_MODIFIER_BOP_HAPPY',		'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'REQSET_BOP_HAPPY'		);

INSERT INTO ModifierStrings
			(ModifierId,								Context,	Text								)
VALUES		('AGENDA_MODIFIER_BOP_UNHAPPY_VICTORY',		'Sample',	'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'	),
			('AGENDA_MODIFIER_BOP_UNHAPPY_SCORE',		'Sample',	'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'	),
			('AGENDA_MODIFIER_BOP_HAPPY',		'Sample',	'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'	);

INSERT INTO ModifierArguments
			(ModifierId,							Name,							Value												)
VALUES		('AGENDA_MODIFIER_BOP_UNHAPPY_VICTORY',	'InitialValue',					-50											),
			('AGENDA_MODIFIER_BOP_UNHAPPY_VICTORY',	'IncrementValue',				-5													),
			('AGENDA_MODIFIER_BOP_UNHAPPY_VICTORY',	'IncrementTurns',				-10													),
			('AGENDA_MODIFIER_BOP_UNHAPPY_VICTORY',	'MaxValue',						-200												),
			('AGENDA_MODIFIER_BOP_UNHAPPY_VICTORY',	'StatementKey',					'LOC_DIPLO_WARNING_LEADER_BOP_REASON_ANY'	),
			('AGENDA_MODIFIER_BOP_UNHAPPY_VICTORY',	'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_BOP_UNHAPPY_VICTORY'				),

			('AGENDA_MODIFIER_BOP_UNHAPPY_SCORE',	'InitialValue',					-50											),
			('AGENDA_MODIFIER_BOP_UNHAPPY_SCORE',	'IncrementValue',				-5													),
			('AGENDA_MODIFIER_BOP_UNHAPPY_SCORE',	'IncrementTurns',				-10													),
			('AGENDA_MODIFIER_BOP_UNHAPPY_SCORE',	'MaxValue',						-200												),
			('AGENDA_MODIFIER_BOP_UNHAPPY_SCORE',	'StatementKey',					'LOC_DIPLO_WARNING_LEADER_BOP_REASON_ANY'	),
			('AGENDA_MODIFIER_BOP_UNHAPPY_SCORE',	'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_BOP_UNHAPPY_SCORE'				),
	
			('AGENDA_MODIFIER_BOP_HAPPY',	'InitialValue',					50													),
			('AGENDA_MODIFIER_BOP_HAPPY',	'IncrementValue',				5													),
			('AGENDA_MODIFIER_BOP_HAPPY',	'IncrementTurns',				10													),
			('AGENDA_MODIFIER_BOP_HAPPY',	'MaxValue',						100													),
			('AGENDA_MODIFIER_BOP_HAPPY',	'StatementKey',					'LOC_DIPLO_KUDO_LEADER_BOP_REASON_ANY'),
			('AGENDA_MODIFIER_BOP_HAPPY',	'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_BOP_HAPPY');
			
INSERT INTO RequirementSets
			(RequirementSetId,				RequirementSetType			)
VALUES		('REQSET_BOP_UNHAPPY_VICTORY',	'REQUIREMENTSET_TEST_ALL'	),
			('REQSET_BOP_UNHAPPY_SCORE',	'REQUIREMENTSET_TEST_ALL'	),
			('REQSET_BOP_HAPPY',		'REQUIREMENTSET_TEST_ALL'	);

INSERT INTO Requirements
			(RequirementId, RequirementType, Likeliness, Impact, Inverse, Reverse, Persistent, ProgressWeight, Triggered)
VALUES		("VICTORY_SCORE_TEAM_DOES_NOT_HAVE_HIGHEST_SCORE", "REQUIREMENT_TEAM_HAS_HIGHEST_SCORE", 0, 0, 1, 0, 0, 1, 0);
		--	("REQUIRES_HAS_INVERSE_PROGRESS", "REQUIREMENT_PLAYER_FINISHED_RESEARCH", 0, 0, 1, 0, 0, 1, 0),
		--	("REQUIRES_HAS_INVERSE_POP", "REQUIREMENT_PLAYER_POPULATION_LEAD", 0, 0, 1, 0, 0, 1, 0);

INSERT INTO RequirementSetRequirements
			(RequirementSetId,				RequirementId						)
VALUES		('REQSET_BOP_UNHAPPY_SCORE',	'REQUIRES_MET_10_TURNS_AGO'			),
			('REQSET_BOP_UNHAPPY_SCORE',	'REQUIRES_PLAYER_HAS_POLITICAL_PHILOSOPHY'),
			('REQSET_BOP_UNHAPPY_SCORE',	'VICTORY_SCORE_TEAM_HAS_HIGHEST_SCORE'),
		--	('REQSET_BOP_UNHAPPY',	'REQUIRES_HAS_HIGH_POPULATION'),
		--	('REQSET_BOP_UNHAPPY',	'REQUIRES_LEADS_PROGRESS'),
			('REQSET_BOP_UNHAPPY_VICTORY',	'REQUIRES_PLAYER_CLOSE_TO_VICTORY'		),
			('REQSET_BOP_UNHAPPY_VICTORY',	'REQUIRES_PLAYER_HAS_POLITICAL_PHILOSOPHY'		),
			('REQSET_BOP_UNHAPPY_VICTORY',	'REQUIRES_MET_10_TURNS_AGO'		),
			('REQSET_BOP_HAPPY',		'REQUIRES_MAJOR_CIV_OPPONENT'		),
			('REQSET_BOP_HAPPY',		'REQUIRES_MET_10_TURNS_AGO'			),
			('REQSET_BOP_HAPPY',		'REQUIRES_PLAYER_HAS_POLITICAL_PHILOSOPHY'),
			('REQSET_BOP_HAPPY',		'VICTORY_SCORE_TEAM_DOES_NOT_HAVE_HIGHEST_SCORE');
		--	('REQSET_BOP_HAPPY',		'REQUIRES_HAS_LOW_POPULATION'			),
		--	('REQSET_BOP_HAPPY',		'REQUIRES_LAGS_PROGRESS'			);

