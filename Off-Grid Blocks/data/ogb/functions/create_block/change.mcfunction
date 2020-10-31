scoreboard players operation #ID_temp off_grid_blocks = @s ogb.select_id

execute if entity @s[tag=ogb.set_block_collision.shulker] run scoreboard players set #collision_type_temp off_grid_blocks 0
execute if entity @s[tag=ogb.set_block_collision.none] run scoreboard players set #collision_type_temp off_grid_blocks 1
execute if entity @s[tag=ogb.set_block_visual.fb] run scoreboard players set #visual_type_temp off_grid_blocks 0

execute as @e[type=#ogb:blocks,tag=ogb.block,tag=off_grid_blocks] if score @s ogb.select_id = #ID_temp off_grid_blocks at @s run function ogb:create_block/change.load