-- edit_modifiers
-- Author: beren
-- DateCreated: 5/20/2024 12:40:35 PM
--------------------------------------------------------------
UPDATE ModifierArguments
SET Value = 6
Where ModifierId = "AGENDA_LOW_CULTURE" and Name = "InitialValue";

UPDATE ModifierArguments
SET Value = 0
Where ModifierId = "AGENDA_LOW_CULTURE" and Name = "HiddenAgenda";

UPDATE ModifierArguments
SET Value = -6
Where ModifierId = "AGENDA_HIGH_CULTURE" and Name = "InitialValue";

UPDATE ModifierArguments
SET Value = 0
Where ModifierId = "AGENDA_HIGH_CULTURE" and Name = "HiddenAgenda";

UPDATE ModifierArguments
SET Value = -6
Where ModifierId = "AGENDA_HIGH_FAITH" and Name = "InitialValue";

UPDATE ModifierArguments
SET Value = 0
Where ModifierId = "AGENDA_HIGH_FAITH" and Name = "HiddenAgenda";

UPDATE ModifierArguments
SET Value = 6
Where ModifierId = "AGENDA_LOW_FAITH" and Name = "InitialValue";

UPDATE ModifierArguments
SET Value = 0
Where ModifierId = "AGENDA_LOW_FAITH" and Name = "HiddenAgenda";

UPDATE ModifierArguments
SET Value = -6
Where ModifierId = "AGENDA_HIGH_HAPPINESS" and Name = "InitialValue";

UPDATE ModifierArguments
SET Value = 0
Where ModifierId = "AGENDA_HIGH_HAPPINESS" and Name = "HiddenAgenda";

UPDATE ModifierArguments
SET Value = 6
Where ModifierId = "AGENDA_LOW_HAPPINESS" and Name = "InitialValue";

UPDATE ModifierArguments
SET Value = 0
Where ModifierId = "AGENDA_LOW_HAPPINESS" and Name = "HiddenAgenda";

UPDATE ModifierArguments
SET Value = -6
Where ModifierId = "AGENDA_HIGH_INDUSTRY" and Name = "InitialValue";

UPDATE ModifierArguments
SET Value = 0
Where ModifierId = "AGENDA_HIGH_INDUSTRY" and Name = "HiddenAgenda";

UPDATE ModifierArguments
SET Value = 6
Where ModifierId = "AGENDA_LOW_INDUSTRY" and Name = "InitialValue";

UPDATE ModifierArguments
SET Value = 0
Where ModifierId = "AGENDA_LOW_INDUSTRY" and Name = "HiddenAgenda";

UPDATE ModifierArguments
SET Value = -6
Where ModifierId = "AGENDA_HIGH_POPULATION" and Name = "InitialValue";

UPDATE ModifierArguments
SET Value = 0
Where ModifierId = "AGENDA_HIGH_POPULATION" and Name = "HiddenAgenda";

UPDATE ModifierArguments
SET Value = 6
Where ModifierId = "AGENDA_LOW_POPULATION" and Name = "InitialValue";

UPDATE ModifierArguments
SET Value = 0
Where ModifierId = "AGENDA_LOW_POPULATION" and Name = "HiddenAgenda";

UPDATE ModifierArguments
SET Value = -6
Where ModifierId = "AGENDA_HIGH_STANDING_ARMY" and Name = "InitialValue";

UPDATE ModifierArguments
SET Value = 0
Where ModifierId = "AGENDA_HIGH_STANDING_ARMY" and Name = "HiddenAgenda";

UPDATE ModifierArguments
SET Value = 6
Where ModifierId = "AGENDA_LOW_STANDING_ARMY" and Name = "InitialValue";

UPDATE ModifierArguments
SET Value = 0
Where ModifierId = "AGENDA_LOW_STANDING_ARMY" and Name = "HiddenAgenda";