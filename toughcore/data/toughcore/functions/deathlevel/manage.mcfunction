# adjust max hearts tracking based off the number of times a user dies
###
execute as @a[scores={tcDeathLevel=0}] at @s run scoreboard players set @s tcTotalHearts 10
execute as @a[scores={tcDeathLevel=1}] at @s run scoreboard players set @s tcTotalHearts 8
execute as @a[scores={tcDeathLevel=2}] at @s run scoreboard players set @s tcTotalHearts 6
execute as @a[scores={tcDeathLevel=3}] at @s run scoreboard players set @s tcTotalHearts 4
execute as @a[scores={tcDeathLevel=4}] at @s run scoreboard players set @s tcTotalHearts 2

# make sure you cannot have a negative death level
execute as @a[scores={tcDeathLevel=-1}] at @s run scoreboard players set @s tcDeathLevel 0
