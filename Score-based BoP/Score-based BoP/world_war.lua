include("PopupManager");
include("AnimSidePanelSupport");
include("InstanceManager");
include("SupportFunctions");
include("GameCapabilities");
include("TeamSupport");

local iLastShownEraIndex = Game.GetEras():GetCurrentEra();

function OnCheckGameEraChanged()
    local localPlayer = Game.GetLocalPlayer();
    print("Local Player: ", localPlayer);
    
    local currentEra = Game.GetEras():GetCurrentEra();
    print("Current Era: ", currentEra);
    
    local currentTurn = Game.GetCurrentGameTurn();
    print("Current Turn: ", currentTurn);
    
    local gameStartTurn = GameConfiguration.GetStartTurn();
    print("Game Start Turn: ", gameStartTurn);
    
    if currentEra == 10 and iLastShownEraIndex ~= currentEra and localPlayer ~= PlayerTypes.NONE then
        local pAllPlayerIDs = PlayerManager.GetAliveMajors();
        for _, pPlayer1 in ipairs(pAllPlayerIDs) do
            for _, pPlayer2 in ipairs(pAllPlayerIDs) do
                local diploState = pPlayer1:GetAi_Diplomacy();
                print(diploState:GetDiplomaticState(pPlayer2:GetID()));
            end
        end
    end

	if currentEra == 3 and iLastShownEraIndex ~= currentEra and localPlayer ~= PlayerTypes.NONE then
        local pAllPlayerIDs = PlayerManager.GetAliveMajors();
        for _, pPlayer1 in ipairs(pAllPlayerIDs) do
            for _, pPlayer2 in ipairs(pAllPlayerIDs) do
                local diploStateUsed = pPlayer1:GetAi_Diplomacy():GetDiplomaticState(pPlayer2:GetID());
                if tostring(diploStateUsed) == "DIPLO_STATE_DENOUNCED" then
					pPlayer1:GetDiplomacy():DeclareWarOn(pPlayer2:GetID(), WarTypes.FORMAL_WAR, true);
					pPlayer1:GetAi_Military():PrepareForWarWith(pPlayer2:GetID());
					pPlayer1:GetAi_Military():SetRival(pPlayer2:GetID());
				end
            end
        end
    end
	if currentEra == 4 and iLastShownEraIndex ~= currentEra and localPlayer ~= PlayerTypes.NONE then
        local pAllPlayerIDs = PlayerManager.GetAliveMajors();
        for _, pPlayer1 in ipairs(pAllPlayerIDs) do
            for _, pPlayer2 in ipairs(pAllPlayerIDs) do
                local diploStateUsed = pPlayer1:GetAi_Diplomacy():GetDiplomaticState(pPlayer2:GetID());
                if tostring(diploStateUsed) == "DIPLO_STATE_DENOUNCED" then
					pPlayer1:GetDiplomacy():DeclareWarOn(pPlayer2:GetID(), WarTypes.FORMAL_WAR, true);
					pPlayer1:GetAi_Military():PrepareForWarWith(pPlayer2:GetID());
					pPlayer1:GetAi_Military():SetRival(pPlayer2:GetID());
				end
            end
        end
    end
	if currentEra == 5 and iLastShownEraIndex ~= currentEra and localPlayer ~= PlayerTypes.NONE then
        local pAllPlayerIDs = PlayerManager.GetAliveMajors();
        for _, pPlayer1 in ipairs(pAllPlayerIDs) do
            for _, pPlayer2 in ipairs(pAllPlayerIDs) do
                local diploStateUsed = pPlayer1:GetAi_Diplomacy():GetDiplomaticState(pPlayer2:GetID());
                if tostring(diploStateUsed) == "DIPLO_STATE_DENOUNCED" then
					pPlayer1:GetDiplomacy():DeclareWarOn(pPlayer2:GetID(), WarTypes.FORMAL_WAR, true);
					pPlayer1:GetAi_Military():PrepareForWarWith(pPlayer2:GetID());
					pPlayer1:GetAi_Military():SetRival(pPlayer2:GetID());
				end
            end
        end
    end
	if currentEra == 6 and iLastShownEraIndex ~= currentEra and localPlayer ~= PlayerTypes.NONE then
        local pAllPlayerIDs = PlayerManager.GetAliveMajors();
        for _, pPlayer1 in ipairs(pAllPlayerIDs) do
            for _, pPlayer2 in ipairs(pAllPlayerIDs) do
                local diploStateUsed = pPlayer1:GetAi_Diplomacy():GetDiplomaticState(pPlayer2:GetID());
                if tostring(diploStateUsed) == "DIPLO_STATE_DENOUNCED" then
					pPlayer1:GetDiplomacy():DeclareWarOn(pPlayer2:GetID(), WarTypes.FORMAL_WAR, true);
					pPlayer1:GetAi_Military():PrepareForWarWith(pPlayer2:GetID());
					pPlayer1:GetAi_Military():SetRival(pPlayer2:GetID());
				end
            end
        end
    end
	if currentEra == 7 and iLastShownEraIndex ~= currentEra and localPlayer ~= PlayerTypes.NONE then
        local pAllPlayerIDs = PlayerManager.GetAliveMajors();
        for _, pPlayer1 in ipairs(pAllPlayerIDs) do
            for _, pPlayer2 in ipairs(pAllPlayerIDs) do
                local diploStateUsed = pPlayer1:GetAi_Diplomacy():GetDiplomaticState(pPlayer2:GetID());
                if tostring(diploStateUsed) == "DIPLO_STATE_DENOUNCED" then
					pPlayer1:GetDiplomacy():DeclareWarOn(pPlayer2:GetID(), WarTypes.FORMAL_WAR, true);
					pPlayer1:GetAi_Military():PrepareForWarWith(pPlayer2:GetID());
					pPlayer1:GetAi_Military():SetRival(pPlayer2:GetID());
				end
            end
        end
    end
	if currentEra == 8 and iLastShownEraIndex ~= currentEra and localPlayer ~= PlayerTypes.NONE then
        local pAllPlayerIDs = PlayerManager.GetAliveMajors();
        for _, pPlayer1 in ipairs(pAllPlayerIDs) do
            for _, pPlayer2 in ipairs(pAllPlayerIDs) do
                local diploStateUsed = pPlayer1:GetAi_Diplomacy():GetDiplomaticState(pPlayer2:GetID());
                if tostring(diploStateUsed) == "DIPLO_STATE_DENOUNCED" then
					pPlayer1:GetDiplomacy():DeclareWarOn(pPlayer2:GetID(), WarTypes.FORMAL_WAR, true);
					pPlayer1:GetAi_Military():PrepareForWarWith(pPlayer2:GetID());
					pPlayer1:GetAi_Military():SetRival(pPlayer2:GetID());
				end
            end
        end
    end
	if currentEra == 9 and iLastShownEraIndex ~= currentEra and localPlayer ~= PlayerTypes.NONE then
        local pAllPlayerIDs = PlayerManager.GetAliveMajors();
        for _, pPlayer1 in ipairs(pAllPlayerIDs) do
            for _, pPlayer2 in ipairs(pAllPlayerIDs) do
                local diploStateUsed = pPlayer1:GetAi_Diplomacy():GetDiplomaticState(pPlayer2:GetID());
                if tostring(diploStateUsed) == "DIPLO_STATE_DENOUNCED" then
					pPlayer1:GetDiplomacy():DeclareWarOn(pPlayer2:GetID(), WarTypes.FORMAL_WAR, true);
					pPlayer1:GetAi_Military():PrepareForWarWith(pPlayer2:GetID());
					pPlayer1:GetAi_Military():SetRival(pPlayer2:GetID());
				end
            end
        end
    end
end

function Initialize()
    Events.LocalPlayerTurnBegin.Add(OnCheckGameEraChanged);
end

print("WorldWar script Started =====");
Initialize();

                    if aiMilitary then
                        aiMilitary:PrepareForWarWith(pPlayer2:GetID());
                        local operationType = OperationType.CITY_ASSAULT
                        if operationType then
                            aiMilitary:StartScriptedOperation(pPlayer2:GetID(), operationType, true);
                            print("Player " .. pPlayer1:GetID() .. " started scripted operation against Player " .. pPlayer2:GetID());
                        else
                            print("OperationType.CITY_ASSAULT is nil");
                        end
                    else
                        print("aiMilitary is nil for player " .. pPlayer1:GetID());
                    end