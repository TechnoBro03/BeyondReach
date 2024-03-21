# If reach isn't within limits, use default reach and do not change
execute unless score @s reach matches 2..64 run attribute @s minecraft:player.block_interaction_range base set 4.5
execute unless score @s reach matches 2..64 run return 0

# Store reach into storage
execute store result storage minecraft:beyond_reach reach int 1 run scoreboard players get @s reach

# Call function with reach argument
execute as @s at @s run function beyond_reach:raycast with storage minecraft:beyond_reach