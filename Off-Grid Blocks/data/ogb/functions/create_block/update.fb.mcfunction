execute at @a if score @p ogb.select_id = @s ogb.select_id run tellraw @p [{"text": "Selected block: "},{"nbt": "BlockState.Name","storage": "ogb:selected_block"}]
scoreboard players operation #GID_temp off_grid_blocks = @s ogb.group_id
execute as @e[type=minecraft:falling_block,tag=ogb.block_visual,tag=off_grid_blocks,distance=..1] if score @s ogb.group_id = #GID_temp off_grid_blocks run data modify entity @s BlockState set from storage ogb:selected_block BlockState
tp @e[type=minecraft:area_effect_cloud,tag=ogb.block_placement_marker,limit=1]
kill @e[type=minecraft:area_effect_cloud,tag=ogb.block_placement_marker,limit=1]
forceload remove ~ ~