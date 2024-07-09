-- LuaScript2
-- Author: beren
-- DateCreated: 6/20/2024 11:59:45 PM
--------------------------------------------------------------
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

    local erasToCheck = {2, 3, 4, 5, 6, 7, 8, 9};

    for _, era in ipairs(erasToCheck) do
        print("Checking era: ", era);
        if currentEra == era and localPlayer ~= PlayerTypes.NONE then
            print("Era match found: ", currentEra);
            local pAllPlayerIDs = PlayerManager.GetAliveMajors();
            for _, pPlayer1 in ipairs(pAllPlayerIDs) do
                local highestScorePlayer = nil;
                local otherPlayers = {}; -- Initialize as empty table
                local region_playerIDs = {}; -- Initialize as empty table

                for _, pPlayer2 in ipairs(pAllPlayerIDs) do
                    local closestDistance = nil;
                    local player2ClosestCity = nil;
                    local player1ClosestCity = nil;

                    local player2Cities = pPlayer2:GetCities();
                    for _, enemyCity in player2Cities:Members() do
                        local player1Cities = pPlayer1:GetCities();
                        for _, ownCity in player1Cities:Members() do
                            local distance = Map.GetPlotDistance(enemyCity:GetX(), enemyCity:GetY(), ownCity:GetX(), ownCity:GetY());
                            if closestDistance == nil or distance < closestDistance then
                                closestDistance = distance;
                                player2ClosestCity = enemyCity;
                                player1ClosestCity = ownCity;
                            end;
                        end;
                    end;

                    if closestDistance and closestDistance > 0 and closestDistance <= 19 then
                        table.insert(region_playerIDs, pPlayer2:GetID());
                    end;
                end; -- Close the 'for _, pPlayer2 in ipairs(pAllPlayerIDs) do' loop
                print("region players:", region_playerIDs);

                print("Region player IDs count: ", #region_playerIDs);
                for _, pPlayerID in ipairs(region_playerIDs) do
                    print("Checking player ID: ", pPlayerID);
                    local pPlayer = Players[pPlayerID];
                    if pPlayer then
                        local playerScore = pPlayer:GetScore();
                        if highestScorePlayer == nil or playerScore > highestScorePlayer.score then
                            highestScorePlayer = {id = pPlayerID, score = playerScore, playerObject = pPlayer};
                            print("New highest score found: Player ID: ", pPlayerID, " Score: ", playerScore);
                        end;
                    end;
                end; -- Close the 'for _, pPlayerID in ipairs(region_playerIDs) do' loop

                -- Populate otherPlayers with all region players except the highest score player
                for _, pPlayerID in ipairs(region_playerIDs) do
                    if pPlayerID ~= highestScorePlayer.id then
                        table.insert(otherPlayers, pPlayerID);
                    end;
                end;
                print("other players;", otherPlayers);
                print("Other players count: ", #otherPlayers);

                local militaryAI = pPlayer1:GetAi_Military();
                local iShortestDistance = 10000;
                local pPlayer1ClosestCity = nil;

                if highestScorePlayer then
                    print("Highest score player ID:", highestScorePlayer.id);
                    local highestScorePlayerCities = highestScorePlayer.playerObject:GetCities();
                    for _, enemyCity in highestScorePlayerCities:Members() do
                        local player1Cities = pPlayer1:GetCities();
                        for _, ownCity in player1Cities:Members() do
                            local distance = Map.GetPlotDistance(enemyCity:GetX(), enemyCity:GetY(), ownCity:GetX(), ownCity:GetY());
                            if distance < iShortestDistance then
                                iShortestDistance = distance;
                                pPlayer1ClosestCity = ownCity;
                                pCity = enemyCity;
                            end;
                        end;
                    end;

                    if pPlayer1:GetDiplomacy():IsAtWarWith(highestScorePlayer.id) then
                        if pCity and pPlayer1ClosestCity then
                            local operationTime = militaryAI:StartScriptedOperationWithTargetAndRally("Attack Enemy City", pCity:GetOwner(), Map.GetPlot(pCity:GetX(), pCity:GetY()):GetIndex(), Map.GetPlot(pPlayer1ClosestCity:GetX(), pPlayer1ClosestCity:GetY()):GetIndex());
                            print("Operation started");
                            local pUnits = pPlayer1:GetUnits();
                            for i, pUnit in pUnits:Members() do
                                militaryAI:AddUnitToScriptedOperation(operationTime, pUnit:GetID());
                                print("Unit added");
                            end;
                        end;
                    else
                        pPlayer1:GetDiplomacy():DeclareWarOn(highestScorePlayer.id, WarTypes.SURPRISE_WAR, true);
                        if pCity and pPlayer1ClosestCity then
                            local operationTime = militaryAI:StartScriptedOperationWithTargetAndRally("Attack Enemy City", pCity:GetOwner(), Map.GetPlot(pCity:GetX(), pCity:GetY()):GetIndex(), Map.GetPlot(pPlayer1ClosestCity:GetX(), pPlayer1ClosestCity:GetY()):GetIndex());
                            print("Operation started");
                            local pUnits = pPlayer1:GetUnits();
                            for i, pUnit in pUnits:Members() do
                                militaryAI:AddUnitToScriptedOperation(operationTime, pUnit:GetID());
                                print("Unit added");
                            end;
                        end;
                    end;
				end;
            end; -- Close the 'for _, pPlayer1 in ipairs(pAllPlayerIDs) do' loop
            --iLastShownEraIndex = currentEra;
        end;
    end; -- Close the 'for _, era in ipairs(erasToCheck) do' loop
end; -- Close the OnCheckGameEraChanged function

function Initialize()
    print("Initialize function called");
    Events.LocalPlayerTurnBegin.Add(OnCheckGameEraChanged);
end;

Initialize();
