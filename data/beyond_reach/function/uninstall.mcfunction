scoreboard objectives remove beyond_reach.airPlace
scoreboard objectives remove beyond_reach.airPlaceTracker
scoreboard objectives remove beyond_reach.reach
data remove storage minecraft:beyond_reach reach

execute as @a run attribute @s player.block_interaction_range base set 4.5

tellraw @a ["","<",{"text":"Beyond Reach","color":"aqua"},"> Datapack ",{"text":"uninstalled","color":"red"}]