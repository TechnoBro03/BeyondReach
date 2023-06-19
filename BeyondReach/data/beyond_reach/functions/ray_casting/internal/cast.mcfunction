# Turn reach in blocks to steps
scoreboard players operation @s rayStep = @s reach
scoreboard players operation @s rayStep *= .2 reach
scoreboard players operation @s rayStep += .2 reach

# Execute from eyes rotated as player
execute at @s anchored eyes positioned ^ ^ ^ run function beyond_reach:ray_casting/internal/step

# Remove all tags
tag @s remove hitBlock
tag @s remove stopRay
tag @s remove hitEnd