# Sets block to barrier
setblock ~ ~ ~ barrier keep

# If marker is "old," kill and setblock back to air
execute if score @s airPlace matches 1.. run setblock ~ ~ ~ air replace
execute if score @s airPlace matches 1.. run kill @s

# Keeps track of "age"
scoreboard players add @s airPlace 1