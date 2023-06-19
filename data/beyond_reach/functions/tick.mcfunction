# Runs every tick

# Enable OPs to use /trigger reach set __
scoreboard players enable @a[tag=OP] reach

# Remove tag if player sets reach to 0 (will relink interaction)
tag @a[scores={reach=0}] remove linkedInteraction

# Link interaction to new players
execute as @a[tag=!linkedInteraction,tag=OP] at @s run function beyond_reach:internal/link_interaction

# Execute as interaction
execute as @e[type=interaction,tag=linkedInteraction] run function beyond_reach:internal/as_interaction

# Ray cast
execute as @a[tag=placeBlock] run function beyond_reach:ray_casting/internal/cast
execute as @a[tag=destroyBlock] run function beyond_reach:ray_casting/internal/cast

# Add 1 to age of marker
scoreboard players add @e[type=marker,tag=placedMarker] reach 1

# If marker is 2 ticks old, run function
execute as @e[type=marker,tag=placedMarker,scores={reach=2..}] at @s run function beyond_reach:internal/clone_and_remove



# # Runs AS player AT entity
# execute as @a at @e[type=!player] if score @e[limit=1,sort=nearest,type=!player] ID = @s ID run say hi

# # Runs AS entity AT player
# execute as @e[type=!player] at @a if score @p ID = @s ID run say hi