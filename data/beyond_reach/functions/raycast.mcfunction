# Change reach
$attribute @s minecraft:player.block_interaction_range base set $(reach)

# Only summon marker when airPlace is on
execute unless score @s airPlace matches 1 run return 0

# Summon a marker where the player is looking
$execute anchored eyes positioned ^ ^ ^$(reach) if block ~ ~ ~ air run summon marker ~ ~ ~ {Tags:[Block]}

# To prevent barrier block "flickering," stop marker from being killed
$execute anchored eyes positioned ^ ^ ^$(reach) run scoreboard players remove @e[type=marker,tag=Block,sort=nearest,limit=1] airPlace 1