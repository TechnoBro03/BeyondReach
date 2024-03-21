# To enable only for specific players, change brackets to desired selectors. Ex '@a[gamemode=creative]', '@a[name=MyName]', etc

# Enables /trigger
scoreboard players enable @a[] airPlace
scoreboard players enable @a[] reach

# Set reach attribute and "cast ray"
execute as @a[] run function beyond_reach:reach

# Execute as all markers in world
execute as @e[type=marker,tag=Block] at @s run function beyond_reach:as_marker

# Disable airPlace if triggered again ("off")
scoreboard players set @a[scores={airPlace=2..}] airPlace 0