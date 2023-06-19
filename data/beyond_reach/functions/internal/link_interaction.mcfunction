scoreboard players set @s reach 5

summon interaction ~ ~ ~ {Tags:["newInteraction"]}

scoreboard players operation @s linkID = .global linkID
scoreboard players add .global linkID 1

execute as @e[type=interaction,tag=newInteraction] store result score @s linkID run scoreboard players get @p linkID

execute as @e[type=interaction,tag=newInteraction] run tag @s add linkedInteraction
execute as @e[type=interaction,tag=newInteraction] run tag @s remove newInteraction

tag @s add linkedInteraction