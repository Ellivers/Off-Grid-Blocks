tag @s remove ogb.summoned
execute if entity @s[tag=ogb.block_visual.fb] run function ogb:create_block/update.fb
tag @s remove ogb.get_from_closest

execute at @s run function ogb:move_block/block/center/center
execute as @e[type=#ogb:blocks,tag=ogb.block,tag=off_grid_blocks,tag=ogb.delete_me] run function ogb:remove_block/delete
scoreboard players operation #ID_temp off_grid_blocks = @s ogb.select_id
execute as @a if score @s ogb.select_id = #ID_temp off_grid_blocks at @s run function ogb:ui/main