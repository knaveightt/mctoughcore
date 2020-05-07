# Check if the player has died 5 times,
# Broadcast a message to the server and kick the user to spectator mode.
#####

execute at @a[scores={tcDeathLevel=5..},gamemode=survival] run say @p has died too many times and is now a ghost.
execute as @a[scores={tcDeathLevel=5..},gamemode=survival] at @s run gamemode spectator @s
