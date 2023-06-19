# These functions run AT the ray (where it hit a block) AS the player

# Stops the ray when it hits block
tag @s add stopRay

# Destroy block
execute as @s[tag=destroyBlock] run function beyond_reach:internal/destroy_block

# Place block
execute as @s[tag=placeBlock] run function beyond_reach:internal/summon_falling_block

# Remove tags
tag @s remove placeBlock
tag @s remove destroyBlock