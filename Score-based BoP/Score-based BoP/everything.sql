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

/*DELETE from HistoricalAgendas;

INSERT INTO HistoricalAgendas
			(LeaderType,					AgendaType)
VALUES		('LEADER_BARBAROSSA',			'AGENDA_BOP'),
			('LEADER_CATHERINE_DE_MEDICI',	'AGENDA_BOP'),
			('LEADER_CLEOPATRA',				'AGENDA_BOP'),
			('LEADER_GANDHI',				'AGENDA_BOP'),
			('LEADER_GILGAMESH',				'AGENDA_BOP'),
			('LEADER_GORGO',					'AGENDA_BOP'),
			('LEADER_HARDRADA',				'AGENDA_BOP'),
			('LEADER_HOJO',					'AGENDA_BOP'),
			('LEADER_MVEMBA',				'AGENDA_BOP'),
			('LEADER_PEDRO',					'AGENDA_BOP'),
			('LEADER_PERICLES',				'AGENDA_BOP'),
			('LEADER_PETER_GREAT',			'AGENDA_BOP'),
			('LEADER_PHILIP_II',				'AGENDA_BOP'),
			('LEADER_QIN',					'AGENDA_BOP'),
			('LEADER_SALADIN',				'AGENDA_BOP'),
			('LEADER_TOMYRIS',				'AGENDA_BOP'),
			('LEADER_TRAJAN',				'AGENDA_BOP'),
			('LEADER_T_ROOSEVELT',			'AGENDA_BOP'),
			('LEADER_VICTORIA',				'AGENDA_BOP'),
			('LEADER_MONTEZUMA',				'AGENDA_BOP'),
			('LEADER_GITARJA',	'AGENDA_BOP'),
			('LEADER_JAYAVARMAN',				'AGENDA_BOP'),
			('LEADER_JADWIGA',				'AGENDA_BOP'),
			('LEADER_AMANITORE',				'AGENDA_BOP'),
			('LEADER_ALEXANDER',					'AGENDA_BOP'),
			('LEADER_CYRUS',				'AGENDA_BOP'),
			('LEADER_JOHN_CURTIN',					'AGENDA_BOP'),
			('LEADER_CHANDRAGUPTA',				'AGENDA_BOP'),
			('LEADER_GENGHIS_KHAN',					'AGENDA_BOP'),
			('LEADER_LAUTARO',				'AGENDA_BOP'),
			('LEADER_POUNDMAKER',			'AGENDA_BOP'),
			('LEADER_ROBERT_THE_BRUCE',				'AGENDA_BOP'),
			('LEADER_SEONDEOK',					'AGENDA_BOP'),
			('LEADER_SHAKA',				'AGENDA_BOP'),
			('LEADER_TAMAR',				'AGENDA_BOP'),
			('LEADER_WILHELMINA',				'AGENDA_BOP'),
			('LEADER_DIDO',			'AGENDA_BOP'),
			('LEADER_ELEANOR_ENGLAND',				'AGENDA_BOP'),
			('LEADER_ELEANOR_FRANCE',			'AGENDA_BOP'),
			('LEADER_KRISTINA',	'AGENDA_BOP'),
			('LEADER_KUPE',				'AGENDA_BOP'),
			('LEADER_LAURIER',				'AGENDA_BOP'),
			('LEADER_MANSA_MUSA',				'AGENDA_BOP'),
			('LEADER_MATTHIAS_CORVINUS',					'AGENDA_BOP'),
			('LEADER_PACHACUTI',				'AGENDA_BOP'),
			('LEADER_JULIUS_CAESAR',				'AGENDA_BOP'),
			('LEADER_SULEIMAN',					'AGENDA_BOP');*/

INSERT INTO TraitModifiers
			(TraitType,						ModifierId								)
VALUES		('TRAIT_AGENDA_BOP',		'AGENDA_MODIFIER_BOP_UNHAPPY'	),
			('TRAIT_AGENDA_BOP',		'AGENDA_MODIFIER_BOP_HAPPY'		);
		
INSERT INTO Modifiers	
			(ModifierId,								ModifierType,									SubjectRequirementSetId			)
VALUES		('AGENDA_MODIFIER_BOP_UNHAPPY',		'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'REQSET_BOP_UNHAPPY'		),
			('AGENDA_MODIFIER_BOP_HAPPY',		'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'REQSET_BOP_HAPPY'		);

INSERT INTO ModifierStrings
			(ModifierId,								Context,	Text								)
VALUES		('AGENDA_MODIFIER_BOP_UNHAPPY',		'Sample',	'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'	),
			('AGENDA_MODIFIER_BOP_HAPPY',		'Sample',	'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'	);

INSERT INTO ModifierArguments
			(ModifierId,							Name,							Value												)
VALUES		('AGENDA_MODIFIER_BOP_UNHAPPY',	'InitialValue',					-50											),
			('AGENDA_MODIFIER_BOP_UNHAPPY',	'IncrementValue',				-5													),
			('AGENDA_MODIFIER_BOP_UNHAPPY',	'IncrementTurns',				-10													),
			('AGENDA_MODIFIER_BOP_UNHAPPY',	'MaxValue',						-200												),
			('AGENDA_MODIFIER_BOP_UNHAPPY',	'StatementKey',					'LOC_DIPLO_WARNING_LEADER_BOP_REASON_ANY'	),
			('AGENDA_MODIFIER_BOP_UNHAPPY',	'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_BOP_UNHAPPY'				),
	
			('AGENDA_MODIFIER_BOP_HAPPY',	'InitialValue',					50													),
			('AGENDA_MODIFIER_BOP_HAPPY',	'IncrementValue',				5													),
			('AGENDA_MODIFIER_BOP_HAPPY',	'IncrementTurns',				10													),
			('AGENDA_MODIFIER_BOP_HAPPY',	'MaxValue',						100													),
			('AGENDA_MODIFIER_BOP_HAPPY',	'StatementKey',					'LOC_DIPLO_KUDO_LEADER_BOP_REASON_ANY'),
			('AGENDA_MODIFIER_BOP_HAPPY',	'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_BOP_HAPPY');
			
INSERT INTO RequirementSets
			(RequirementSetId,				RequirementSetType			)
VALUES		('REQSET_BOP_UNHAPPY',	'REQUIREMENTSET_TEST_ALL'	),
			('REQSET_BOP_HAPPY',		'REQUIREMENTSET_TEST_ALL'	);

INSERT INTO RequirementSetRequirements
			(RequirementSetId,				RequirementId						)
VALUES		('REQSET_BOP_UNHAPPY',	'REQUIRES_MAJOR_CIV_OPPONENT'		),
			('REQSET_BOP_UNHAPPY',	'REQUIRES_MET_10_TURNS_AGO'			),
			('REQSET_BOP_UNHAPPY',	'REQUIRES_PLAYER_HAS_POLITICAL_PHILOSOPHY'),
			('REQSET_BOP_UNHAPPY',	'VICTORY_SCORE_TEAM_HAS_HIGHEST_SCORE'),
			('REQSET_BOP_HAPPY',		'REQUIRES_MAJOR_CIV_OPPONENT'		),
			('REQSET_BOP_HAPPY',		'REQUIRES_MET_10_TURNS_AGO'			),
			('REQSET_BOP_HAPPY',		'REQUIRES_PLAYER_HAS_POLITICAL_PHILOSOPHY'),
			('REQSET_BOP_HAPPY',		'REQUIRES_HAS_LOW_POPULATION'			),
			('REQSET_BOP_HAPPY',		'REQUIRES_LAGS_PROGRESS'			);

