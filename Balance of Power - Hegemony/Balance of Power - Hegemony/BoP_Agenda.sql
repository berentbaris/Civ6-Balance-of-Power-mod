-- everything
-- Author: beren
-- DateCreated: 5/20/2024 11:10:21 AM
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
VALUES		('TRAIT_AGENDA_BOP',		'AGENDA_MODIFIER_BOP_UNHAPPY_SCORE'	),
			('TRAIT_AGENDA_BOP',		'NONAGENDA_IGNORE_WARMONGERING');
		
INSERT INTO Modifiers	
			(ModifierId,								ModifierType,									SubjectRequirementSetId			)
VALUES		('AGENDA_MODIFIER_BOP_UNHAPPY_SCORE',		'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'REQSET_BOP_UNHAPPY_SCORE'		);

INSERT INTO ModifierStrings
			(ModifierId,								Context,	Text								)
VALUES		('AGENDA_MODIFIER_BOP_UNHAPPY_SCORE',		'Sample',	'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'	);

INSERT INTO ModifierArguments
			(ModifierId,							Name,							Value												)
VALUES		('AGENDA_MODIFIER_BOP_UNHAPPY_SCORE',	'InitialValue',					-50											),
			('AGENDA_MODIFIER_BOP_UNHAPPY_SCORE',	'IncrementValue',				-5													),
			('AGENDA_MODIFIER_BOP_UNHAPPY_SCORE',	'IncrementTurns',				-10													),
			('AGENDA_MODIFIER_BOP_UNHAPPY_SCORE',	'MaxValue',						-200												),
			('AGENDA_MODIFIER_BOP_UNHAPPY_SCORE',	'ReductionTurns',						2													),
			('AGENDA_MODIFIER_BOP_UNHAPPY_SCORE',	'ReductionValue',						15													),
			('AGENDA_MODIFIER_BOP_UNHAPPY_SCORE',	'StatementKey',					'LOC_DIPLO_WARNING_LEADER_BOP_REASON_ANY'	),
			('AGENDA_MODIFIER_BOP_UNHAPPY_SCORE',	'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_BOP_UNHAPPY_SCORE'				);
			
INSERT INTO RequirementSets
			(RequirementSetId,				RequirementSetType			)
VALUES		('REQSET_BOP_UNHAPPY_SCORE',	'REQUIREMENTSET_TEST_ALL'	);

INSERT INTO RequirementSetRequirements
			(RequirementSetId,				RequirementId						)
VALUES		('REQSET_BOP_UNHAPPY_SCORE',	'REQUIRES_MET_10_TURNS_AGO'			),
			('REQSET_BOP_UNHAPPY_SCORE',	'REQUIRES_PLAYER_HAS_POLITICAL_PHILOSOPHY'),
			('REQSET_BOP_UNHAPPY_SCORE',	'VICTORY_SCORE_TEAM_HAS_HIGHEST_SCORE');

