# Summon marker to keep track of location
execute positioned ^ ^ ^-.5 run summon marker ~ ~ ~ {Tags:[placedMarker]}
# Summon falling sand at build limit
execute at @e[type=marker,tag=placedMarker] run setblock ~ 317 ~ barrier
execute at @e[type=marker,tag=placedMarker] run summon falling_block ~ 318 ~ {Tags:[placedBlock]}

# Stores rotation and modifies other data
execute store result score @s rotation run data get entity @s Rotation[0]
execute positioned ~ 318 ~ run function beyond_reach:internal/modify_data

# Kills sand blocks (meaning the player wasn't holding a block item)
kill @e[type=falling_block,tag=placedBlock,nbt={BlockState:{Name:"minecraft:sand"}}]