# If reach is 0, use default reach and do not change
execute if score @s reach matches ..0 run attribute @s minecraft:generic.block_interaction_range base set 4.5
execute if score @s reach matches ..0 run return 0

# Store reach into storage
execute store result storage minecraft:beyond_reach reach int 1 run scoreboard players get @s reach

# Call function with reach argument
execute as @s run function beyond_reach:set_reach with storage minecraft:beyond_reach