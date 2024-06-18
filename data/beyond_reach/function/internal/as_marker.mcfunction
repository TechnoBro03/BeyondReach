# Sets block to barrier

setblock ~ ~ ~ barrier keep

# If player is too close, remove barrier
execute as @p[distance=..2] run setblock ~ ~ ~ air replace

# If marker is "old," kill and setblock back to air
execute if score @s beyond_reach.airPlace matches 1.. run setblock ~ ~ ~ air replace
execute if score @s beyond_reach.airPlace matches 1.. run kill @s

# Keeps track of "age"
scoreboard players add @s beyond_reach.airPlace 1