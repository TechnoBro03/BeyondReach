# Detect hits
execute if score @s rayStep matches 1 run tag @s add hitEnd
execute unless block ~ ~ ~ #beyond_reach:ray_transparent run tag @s add hitBlock

# Run appropriate hit function
execute as @s[tag=hitBlock] run function beyond_reach:ray_casting/hit/hit_block
execute as @s[tag=hitEnd] run function beyond_reach:ray_casting/hit/hit_end

scoreboard players remove @s rayStep 1

# Step forward
execute as @s[tag=!stopRay,tag=!hitEnd] positioned ^ ^ ^0.5 run function beyond_reach:ray_casting/internal/step
