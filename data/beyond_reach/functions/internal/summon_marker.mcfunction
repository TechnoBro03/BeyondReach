# Only summon marker when airPlace is on
execute unless score @s beyond_reach.airPlaceTracker matches 1 run return 0

# Summon a marker where the player is looking
$execute anchored eyes positioned ^ ^ ^$(reach) if block ~ ~ ~ air run summon marker ~ ~ ~ {Tags:[beyond_reach.Block]}

# To prevent barrier block "flickering," stop marker from being killed
$execute anchored eyes positioned ^ ^ ^$(reach) run scoreboard players remove @e[type=marker,tag=beyond_reach.Block,sort=nearest,limit=1] beyond_reach.airPlace 1