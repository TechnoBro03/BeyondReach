# If reach isn't within limits, use default reach
execute store result storage beyond_reach reach int 1 run scoreboard players get @s beyond_reach.reach
execute unless score @s beyond_reach.reach matches 2..64 run data modify storage beyond_reach reach set value 4.5

# Set reach using a macro
function beyond_reach:internal/set_reach_macro with storage beyond_reach

tellraw @s ["","<",{"text":"Beyond Reach","color":"aqua"},"> Reach set to ",{"nbt":"reach","storage":"beyond_reach","color":"green"}," blocks"]

scoreboard players set @s beyond_reach.reach -2147483648