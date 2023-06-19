# Runs on load/reload

tellraw @a ["",{"text":"<","color":"white"},{"text":"Beyond Reach","color":"aqua"},{"text":"> Datapack loaded! Click ","color":"white"},{"text":"here","bold":true,"underlined":true,"color":"white","clickEvent":{"action":"run_command","value":"/tag @s add OP"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click Me!","color":"aqua"}]}},{"text":" for access to datapack commands (OP only)","color":"white"}]

scoreboard objectives add rotation dummy
scoreboard objectives add reach trigger
scoreboard objectives add linkID dummy

scoreboard players set .2 reach 2

# Raycasting
scoreboard objectives add rayStep dummy

kill @e[type=interaction,tag=linkedInteraction]
tag @a remove linkedInteraction