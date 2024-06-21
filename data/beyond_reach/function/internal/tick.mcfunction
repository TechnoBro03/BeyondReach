# To enable only for specific players, change brackets to desired selectors. Ex '@a[gamemode=creative]', '@a[name=MyName]', etc

# Enables /trigger
scoreboard players enable @a[] beyond_reach.airPlace
scoreboard players enable @a[] beyond_reach.reach

# Set reach attribute
execute as @a if score @s beyond_reach.reach matches -2147483647.. run function beyond_reach:internal/set_reach

# Set air place
execute as @a unless score @s beyond_reach.airPlace matches 0 run function beyond_reach:internal/set_air_place

# "Cast ray"
execute as @a[] at @s run function beyond_reach:internal/summon_marker with storage beyond_reach

# Execute as all markers in world
execute as @e[type=marker,tag=beyond_reach.Block] at @s run function beyond_reach:internal/as_marker