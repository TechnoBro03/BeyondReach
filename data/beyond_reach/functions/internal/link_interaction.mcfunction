# Set default reach
scoreboard players set @s reach 5

# Summon interaction with tag
summon interaction ~ ~ ~ {Tags:["newInteraction"]}

# Set player to .global and increment .global
scoreboard players operation @s linkID = .global linkID
scoreboard players add .global linkID 1

# Set interaction's score to players score
execute as @e[type=interaction,tag=newInteraction] store result score @s linkID run scoreboard players get @p linkID

# New tags
execute as @e[type=interaction,tag=newInteraction] run tag @s add linkedInteraction
execute as @e[type=interaction,tag=newInteraction] run tag @s remove newInteraction
tag @s add linkedInteraction