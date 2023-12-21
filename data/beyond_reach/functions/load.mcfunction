# Runs on load/reload

tellraw @a ["",{"text":"<","color":"white"},{"text":"Beyond Reach","color":"aqua"},{"text":"> Datapack loaded!"}]

scoreboard objectives add airPlace trigger
scoreboard objectives add reach trigger
scoreboard objectives add rayStep dummy

scoreboard players set .2 reach 2