tp @s ~ -250 ~
function ogb:move_block/block/update_position
execute at @s as @e[tag=off_grid_blocks] if score @s ogb.group_id = @e[type=#ogb:blocks,tag=ogb.block,tag=off_grid_blocks,sort=nearest,limit=1] ogb.group_id run function ogb:remove_block/tp_kill
kill @s