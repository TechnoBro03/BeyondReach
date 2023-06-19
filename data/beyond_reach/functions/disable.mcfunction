kill @e[type=interaction,tag=linkedInteraction]

scoreboard objectives remove rayStep
scoreboard objectives remove reach
scoreboard objectives remove rotation
scoreboard objectives remove linkID

tellraw @a ["",{"text":"<","color":"white"},{"text":"Beyond Reach","color":"aqua"},{"text":"> Datapack has been partially disabled. Use '/datapack disable' to fully disable the datapack.","color":"white"}]