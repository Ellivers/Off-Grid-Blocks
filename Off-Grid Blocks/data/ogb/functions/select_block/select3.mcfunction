tag @s add ogb.weirdness_prevention
tag @s add ogb.selected
scoreboard players operation #GID_temp off_grid_blocks = @s ogb.group_id
execute as @e[type=#ogb:blocks,tag=ogb.block,tag=off_grid_blocks,sort=nearest,limit=1] if score @s ogb.group_id = #GID_temp off_grid_blocks run scoreboard players operation @s ogb.select_id = #ID_temp off_grid_blocks
scoreboard players operation @s ogb.select_id = #ID_temp off_grid_blocks
effect give @s minecraft:glowing 1000000 0 true