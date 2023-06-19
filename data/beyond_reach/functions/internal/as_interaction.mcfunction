# Disable (kill) interaction if player sets reach to -1
execute at @a[scores={reach=-1}] if score @p linkID = @s linkID run kill @s
execute as @a[scores={reach=-1}] run scoreboard players set @s reach -2

# Teleport interaction in front of player, aligned with axis
execute at @a if score @p linkID = @s linkID positioned ^ ^ ^5 positioned ~ ~.6 ~ align xyz run tp @s ~.5 ~1 ~.5

# Find player that interacted with interaction
execute on target run tag @s add placeBlock
execute on attacker run tag @s add destroyBlock

# Reset interaction
data remove entity @s attack
data remove entity @s interaction