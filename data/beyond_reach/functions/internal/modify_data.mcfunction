# Change block type
data modify entity @e[type=falling_block,tag=placedBlock,sort=nearest,limit=1] BlockState.Name set from entity @s SelectedItem.id
# Change stored items
data modify entity @e[type=falling_block,tag=placedBlock,sort=nearest,limit=1] TileEntityData.Items set from entity @s SelectedItem.tag.BlockEntityTag.Items
# Store command
data modify entity @e[type=falling_block,tag=placedBlock,sort=nearest,limit=1] TileEntityData.Command set from entity @s SelectedItem.tag.BlockEntityTag.Command
# Don't drop
data modify entity @e[type=falling_block,tag=placedBlock,sort=nearest,limit=1] DropItem set value 0b

# Match rotation to player
execute if score @s rotation matches -45..45 run data modify entity @e[type=falling_block,tag=placedBlock,sort=nearest,limit=1] BlockState.Properties.facing set value "north"
execute if score @s rotation matches 45..135 run data modify entity @e[type=falling_block,tag=placedBlock,sort=nearest,limit=1] BlockState.Properties.facing set value "east"
execute if score @s rotation matches 135.. run data modify entity @e[type=falling_block,tag=placedBlock,sort=nearest,limit=1] BlockState.Properties.facing set value "south"
execute if score @s rotation matches ..-135 run data modify entity @e[type=falling_block,tag=placedBlock,sort=nearest,limit=1] BlockState.Properties.facing set value "south"
execute if score @s rotation matches -135..-45 run data modify entity @e[type=falling_block,tag=placedBlock,sort=nearest,limit=1] BlockState.Properties.facing set value "west"