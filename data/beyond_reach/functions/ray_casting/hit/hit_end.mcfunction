# These functions run AT the ray (where it hit the end) AS the player

# Place block
execute as @s[tag=placeBlock] run function beyond_reach:internal/summon_falling_block

# Remove tags
tag @s remove placeBlock
tag @s remove destroyBlock