#define storage ogb:selected_block

# Store the block the arrow is in in storage
data modify storage ogb:selected_block BlockState set from entity @s inBlockState

# Remove the temporary blocks
execute at @e[type=minecraft:area_effect_cloud,tag=ogb.block_detection_marker,tag=off_grid_blocks] run fill ~ ~ ~ ~ ~-1 ~ minecraft:air

# KILL
kill @e[type=minecraft:area_effect_cloud,tag=ogb.block_detection_marker,tag=off_grid_blocks,sort=nearest,limit=1]
kill @s