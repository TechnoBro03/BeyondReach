# Stops the ray
tag @s add stopRay

# To prevent barrier block flickering, stop marker from being killed if:
# - still looking at barrier
# - is near the end of ray
execute if score @s rayStep matches ..3 if block ~ ~ ~ barrier run scoreboard players remove @e[type=marker,tag=Block,distance=..1] airPlace 1