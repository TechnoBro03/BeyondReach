# Don't cast if reach is isn't within limits
execute unless score @s reach matches 2..64 run return 0

# Turn blocks into steps
scoreboard players operation @s rayStep = @s reach
scoreboard players operation @s rayStep *= .2 reach
scoreboard players add @s rayStep 1

# Creative adds .5 blocks of reach, so account for this
scoreboard players remove @s[gamemode=!creative] rayStep 1

execute at @s anchored eyes positioned ^ ^ ^ run function beyond_reach:ray_casting/internal/step

tag @s remove hitBlock
tag @s remove stopRay
tag @s remove hitEnd