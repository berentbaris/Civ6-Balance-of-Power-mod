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
        if currentEra == era and iLastShownEraIndex ~= currentEra and localPlayer ~= PlayerTypes.NONE then
            print("Era match found: ", currentEra);
            local pAllPlayerIDs = PlayerManager.GetAliveMajors();
            for _, pPlayer1 in ipairs(pAllPlayerIDs) do
                local highestScorePlayer = nil;
                local otherPlayers = {}; -- Initialize as empty table
                local region_playerIDs = {}; -- Initialize as empty table
				local totalScore = 0;
                for _, pPlayer2 in ipairs(pAllPlayerIDs) do
                    local enemyCity = pPlayer2:GetCities():FindClosest();
                    local ownCapital = pPlayer1:GetCities():GetCapitalCity();
                    if enemyCity and ownCapital then
                        local distance = Map.GetPlotDistance(enemyCity:GetX(), enemyCity:GetY(), ownCapital:GetX(), ownCapital:GetY());
                        print("Distance between cities: ", distance);
                        if distance > 0 and distance <= 19 then
                            table.insert(region_playerIDs, pPlayer2:GetID());
							totalScore = totalScore + pPlayer2:GetScore();
                        end;
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
				local averageScore = totalScore / #region_playerIDs;

				if highestScorePlayer then
					print("Highest score player ID:", highestScorePlayer.id);
                    pPlayer1:GetDiplomacy():DeclareWarOn(highestScorePlayer.id, WarTypes.SURPRISE_WAR, true);
                    local militaryAI = pPlayer1:GetAi_Military();
                    if militaryAI then
                        local enemyCity = highestScorePlayer.playerObject:GetCities():FindClosest();
                        local ownCapital = pPlayer1:GetCities():GetCapitalCity();
                        if enemyCity and ownCapital then
                            local operationTime = militaryAI:StartScriptedOperationWithTargetAndRally("Wartime Attack Walled City", highestScorePlayer.id, Map.GetPlot(enemyCity:GetX(), enemyCity:GetY()):GetIndex(), Map.GetPlot(ownCapital:GetX(), ownCapital:GetY()):GetIndex());
                            print("Operation started");
                            local pUnits = pPlayer1:GetUnits();
                            for i, pUnit in pUnits:Members() do
                                militaryAI:AddUnitToScriptedOperation(operationTime, pUnit:GetID());
                                print("Unit added");
                            end;
                        end;
                    end;
                end;

				local player1Score = pPlayer1:GetScore();
				if player1Score < averageScore then
					local pPlayer1Diplomacy = pPlayer1:GetDiplomacy();
					for _, pOtherPlayerID in ipairs(otherPlayers) do
						print("Checking other player ID: ", pOtherPlayerID);
						local pOtherPlayer = Players[pOtherPlayerID];
						if pOtherPlayer then
							pPlayer1Diplomacy:SetHasAllied(pOtherPlayer);
						end;
                    end;
                end;
            end; -- Close the 'for _, pPlayer1 in ipairs(pAllPlayerIDs) do' loop
            iLastShownEraIndex = currentEra;
        end;
    end; -- Close the 'for _, era in ipairs(erasToCheck) do' loop
end; -- Close the OnCheckGameEraChanged function

function Initialize()
    print("Initialize function called");
    Events.LocalPlayerTurnBegin.Add(OnCheckGameEraChanged);
end;

Initialize();
