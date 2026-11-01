# The Last Heir

An African-inspired story-driven Roblox adventure RPG about loss, friendship, identity, and choosing a better path than revenge.

## Story
After armed raiders burn his village and steal his family's ancient sword, a young boy sets out to find those responsible and recover the heirloom. Along the way, he discovers new places, makes unlikely friends, and uncovers the truth behind the sword. His greatest challenge is learning that revenge cannot restore what he has lost.

## Core pillars
- **Exploration:** villages, forests, rivers, markets, mountains, and ancient sites inspired by a range of African environments.
- **Story choices:** decisions shape relationships and how characters respond to the hero.
- **Companions:** memorable allies with personal goals and side quests.
- **Discovery:** lore, puzzles, collectibles, and the history of the family sword.
- **Growth:** the hero develops courage, patience, empathy, and leadership.

## Repository layout
```text
the-last-heir-roblox/
├── README.md
├── .gitignore
├── docs/
│   ├── GAME_DESIGN.md
│   └── ROADMAP.md
└── roblox/
    ├── ReplicatedStorage/
    │   └── Shared/
    │       └── QuestConfig.lua
    └── ServerScriptService/
        └── QuestService.server.lua
```

## Roblox Studio setup
1. Create a new Roblox experience in Roblox Studio.
2. In `ReplicatedStorage`, create a folder named `Shared`.
3. Add `QuestConfig.lua` as a ModuleScript inside `Shared`.
4. Add `QuestService.server.lua` as a Script inside `ServerScriptService`.
5. Copy the matching files from this repository into those instances.
6. Press **Play** and check the Output window. The server script prints the current introductory quest.

This is a starter scaffold, not a finished game. Build and test each feature in a private Roblox Studio place before publishing.

## First playable milestone
- Intro cinematic and village hub
- Main character movement and interaction
- First companion introduction
- Dialogue and quest tracking
- A choice that demonstrates mercy versus revenge
- Save/load for quest progress (planned)

## Contributions
Open an issue before making large changes. Keep scripts modular, document new systems, and avoid using cultural symbols or sacred traditions as decoration without research and context.
