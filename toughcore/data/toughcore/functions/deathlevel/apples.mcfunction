# If you eat a golden apple, add 2 max hearts (up to 10) and regain use of an armor slot.
# If you eat an enchanted golden apple, you get all your max hearts and armor slots again
###

# Golden Apple
execute as @a[scores={tcUsedGapple=1}] at @s run scoreboard players remove @s tcDeathLevel 1
execute as @a[scores={tcUsedGapple=1}] at @s run scoreboard players set @s tcUsedGapple 0

# Enchanted Golden Apple
execute as @a[scores={tcUsedEGapple=1}] at @s run scoreboard players set @s tcDeathLevel 0
execute as @a[scores={tcUsedEGapple=1}] at @s run scoreboard players set @s tcUsedEGapple 0