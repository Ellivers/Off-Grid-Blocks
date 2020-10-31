execute if entity @s[tag=ogb.block_visual.fb] as @e[type=minecraft:falling_block,tag=ogb.block_visual,distance=..1] if score @s ogb.group_id = @e[type=#ogb:blocks,tag=ogb.block,tag=off_grid_blocks,sort=nearest,limit=1] ogb.group_id run data modify entity @s NoGravity set value 0b
tp @s ~ -250 ~
function ogb:move_block/block/update_position
execute at @s as @e[type=!minecraft:falling_block,tag=off_grid_blocks] if score @s ogb.group_id = @e[type=#ogb:blocks,tag=ogb.block,tag=off_grid_blocks,sort=nearest,limit=1] ogb.group_id run function ogb:remove_block/tp_kill
kill @s