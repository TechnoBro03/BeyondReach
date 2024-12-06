execute as @e[type=marker,tag=beyond_reach.Block] run scoreboard players set @s beyond_reach.airPlace 2
execute as @e[type=marker,tag=beyond_reach.Block] at @s run function beyond_reach:internal/as_marker

scoreboard objectives remove beyond_reach.airPlace
scoreboard objectives remove beyond_reach.airPlaceTracker
scoreboard objectives remove beyond_reach.reach
data remove storage minecraft:beyond_reach reach

execute as @a run attribute @s minecraft:block_interaction_range base reset

tellraw @a ["","<",{"text":"Beyond Reach","color":"aqua"},"> Datapack ",{"text":"uninstalled","color":"red"}]