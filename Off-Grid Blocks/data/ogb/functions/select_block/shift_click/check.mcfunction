scoreboard players operation #SID_temp off_grid_blocks = @s ogb.latest_block
scoreboard players set #LB_found off_grid_blocks 0
execute as @e[type=#ogb:hitboxes,tag=ogb.block_hitbox,tag=off_grid_blocks] if score @s ogb.group_id = #SID_temp off_grid_blocks run function ogb:select_block/shift_click/set_pos2

execute unless score #LB_found off_grid_blocks matches 1 as @e[type=#ogb:hitboxes,tag=ogb.block_hitbox,tag=off_grid_blocks,nbt={HurtTime:10s}] at @s run function ogb:select_block/select2
execute if score #LB_found off_grid_blocks matches 1 as @e[type=#ogb:hitboxes,tag=ogb.block_hitbox,tag=off_grid_blocks,nbt={HurtTime:10s}] at @s run function ogb:select_block/shift_click/measure