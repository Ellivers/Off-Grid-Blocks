scoreboard players operation #GID_temp off_grid_blocks = @s ogb.group_id
execute if entity @s[tag=ogb.block_visual.fb] as @e[type=minecraft:falling_block,tag=ogb.block_visual,distance=..1] if score @s ogb.group_id = #GID_temp off_grid_blocks at @s run function ogb:remove_block/drop_item/fb
function ogb:remove_block/delete