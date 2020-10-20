advancement revoke @s only ogb:select

scoreboard players operation #ID_temp off_grid_blocks = @s ogb.select_id
execute unless predicate ogb:sneaking as @e[type=#ogb:hitboxes,tag=ogb.block_hitbox,tag=off_grid_blocks,nbt={HurtTime:10s}] at @s run function ogb:select_block/select2
execute if predicate ogb:sneaking run function ogb:select_block/shift_click/check
scoreboard players operation @s ogb.latest_block = #SID_temp off_grid_blocks

function ogb:ui/main