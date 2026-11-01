local QuestConfig = {}

QuestConfig.Quests = {
    VillageAftermath = {
        Id = "village_aftermath",
        Title = "A Road Beyond Home",
        Description = "Speak with the village elder and learn where to begin your journey.",
        Objectives = {
            "Find the village elder",
            "Listen to the elder's account",
            "Prepare to leave the village",
        },
        NextQuest = "first_companion",
    },

    FirstCompanion = {
        Id = "first_companion",
        Title = "A Friend on the Road",
        Description = "Meet the traveller waiting near the old road.",
        Objectives = {
            "Follow the path beyond the village",
            "Speak with the traveller",
        },
        NextQuest = nil,
    },
}

return QuestConfig
