# Break the block to get an item from it
setblock ~ ~ ~ minecraft:air destroy
data modify storage ogb:selected_block BlockState set value {Name:"undefined"}
data modify storage ogb:selected_block BlockState.Name set from entity @e[type=minecraft:item,sort=nearest,limit=1] Item.id
execute if data storage ogb:selected_block {BlockState:{Name:"undefined"}} at @a if score @p ogb.select_id = @s ogb.select_id run tellraw @p {"text": "Error: Couldn't select block","color": "red"}
kill @e[type=minecraft:item,distance=..1]

setblock ~ ~-1 ~ minecraft:air

kill @e[type=minecraft:arrow,tag=ogb.block_detector,tag=off_grid_blocks,sort=nearest,limit=1]
kill @s