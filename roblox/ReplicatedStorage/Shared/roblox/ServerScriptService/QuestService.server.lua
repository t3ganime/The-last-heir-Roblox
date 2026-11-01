
-- The Last Heir: Quest Service

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Shared = ReplicatedStorage:WaitForChild("Shared")
local QuestConfig = require(Shared:WaitForChild("QuestConfig"))

local PlayerProgress = {}

local function StartQuest(player, questKey)
    local quest = QuestConfig.Quests[questKey]

    if not quest then
        warn("Quest not found: " .. tostring(questKey))
        return
    end

    PlayerProgress[player.UserId] = {
        QuestKey = questKey,
        ObjectiveIndex = 1
    }

    print(player.Name .. " started: " .. quest.Title)
    print("Objective: " .. quest.Objectives[1])
end

local function AdvanceQuest(player)
    local progress = PlayerProgress[player.UserId]

    if not progress then
        return
    end

    local quest = QuestConfig.Quests[progress.QuestKey]

    if not quest then
        return
    end

    progress.ObjectiveIndex += 1

    local objective = quest.Objectives[progress.ObjectiveIndex]

    if objective then
        print("Next objective: " .. objective)
        return
    end

    print(player.Name .. " completed: " .. quest.Title)

    if quest.NextQuest then
        local nextQuest = quest.NextQuest

        for key, data in pairs(QuestConfig.Quests) do
            if data.Id == nextQuest then
                StartQuest(player, key)
                return
            end
        end
    end

    PlayerProgress[player.UserId] = nil
    print("Quest storyline completed!")
end

Players.PlayerAdded:Connect(function(player)
    StartQuest(player, "VillageAftermath")
end)

Players.PlayerRemoving:Connect(function(player)
    PlayerProgress[player.UserId] = nil
end)

-- Temporary testing function
_G.AdvanceTheLastHeirQuest = AdvanceQuest
