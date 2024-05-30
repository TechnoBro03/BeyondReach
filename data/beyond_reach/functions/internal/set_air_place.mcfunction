# Turn air place on or off
scoreboard players reset @s beyond_reach.airPlace
scoreboard players add @s beyond_reach.airPlaceTracker 1

execute if score @s beyond_reach.airPlaceTracker matches 1 run tellraw @s ["","<",{"text":"Beyond Reach","color":"aqua"},"> Air place ",{"text":"enabled","color":"green"}]
execute if score @s beyond_reach.airPlaceTracker matches 2 run tellraw @s ["","<",{"text":"Beyond Reach","color":"aqua"},"> Air place ",{"text":"disabled","color":"red"}]
execute if score @s beyond_reach.airPlaceTracker matches 2 run scoreboard players reset @s beyond_reach.airPlaceTracker