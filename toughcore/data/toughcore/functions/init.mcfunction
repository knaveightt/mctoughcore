# Called on initial load of the data pack, this function sets up
# all of the scoreboards and values needed for the datapack functions to run

# Used to Initialize counting of deaths and count of total hearts for a player
scoreboard objectives add tcDeathLevel deathCount
scoreboard objectives add tcTotalHearts dummy

# Track usage of golden apples and enchanted golden apples
scoreboard objectives add tcUsedGapple minecraft.used:minecraft.golden_apple
scoreboard objectives add tcUsedEGapple minecraft.used:minecraft.enchanted_golden_apple