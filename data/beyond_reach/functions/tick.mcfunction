# Runs every tick

# Enable OPs to use /trigger reach set __
scoreboard players enable @a[tag=OP] reach

# Link interaction to new players
execute as @a[tag=!linkedInteraction,tag=OP] at @s run function beyond_reach:internal/link_interaction

# Teleport interaction in front of player, aligned with axis
execute as @e[type=interaction,tag=linkedInteraction] at @a if score @p linkID = @s linkID positioned ^ ^ ^5 positioned ~ ~.6 ~ align xyz run tp @s ~.5 ~1 ~.5

# Find player that interacted with interaction
execute as @e[type=interaction,tag=linkedInteraction] on target run tag @s add placeBlock
execute as @e[type=interaction,tag=linkedInteraction] on attacker run tag @s add destroyBlock

# Ray cast
execute as @a[tag=placeBlock] run function beyond_reach:ray_casting/internal/cast
execute as @a[tag=destroyBlock] run function beyond_reach:ray_casting/internal/cast

# Add 1 to age of marker
scoreboard players add @e[type=marker,tag=placedMarker] reach 1

# If marker is 2 ticks old, run function
execute as @e[type=marker,tag=placedMarker,scores={reach=2..}] at @s run function beyond_reach:internal/clone_and_remove


# Reset interaction
execute as @e[type=interaction,tag=linkedInteraction] run data remove entity @s attack
execute as @e[type=interaction,tag=linkedInteraction] run data remove entity @s interaction
