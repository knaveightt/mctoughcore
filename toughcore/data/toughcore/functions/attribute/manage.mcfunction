# sets the max_health attribute when a player dies, depending on max hearts 

execute as @a[scores={tcTotalHearts=10}] at @s run attribute @p minecraft:generic.max_health base set 20
execute as @a[scores={tcTotalHearts=8}] at @s run attribute @p minecraft:generic.max_health base set 16
execute as @a[scores={tcTotalHearts=6}] at @s run attribute @p minecraft:generic.max_health base set 12
execute as @a[scores={tcTotalHearts=4}] at @s run attribute @p minecraft:generic.max_health base set 8
execute as @a[scores={tcTotalHearts=2}] at @s run attribute @p minecraft:generic.max_health base set 4

execute as @a[scores={tcDeathEvent=1}] at @s run effect give @p minecraft:absorption 1
execute as @a[scores={tcDeathEvent=1}] at @s run effect give knaveightt minecraft:instant_damage 1
execute as @a[scores={tcDeathEvent=1}] at @s run scoreboard players set @p tcDeathEvent 0 
