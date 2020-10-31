# Checks if the arrow has the inBlockState nbt tag, otherwise it gives an error
execute as @e[type=minecraft:arrow,tag=ogb.block_detector,tag=off_grid_blocks] if data entity @s inBlockState at @s run function ogb:create_block/get_block
execute as @e[type=minecraft:arrow,tag=ogb.block_detector,tag=off_grid_blocks] unless data entity @s inBlockState as @e[type=minecraft:area_effect_cloud,tag=ogb.block_detection_marker,tag=off_grid_blocks,sort=nearest,limit=1] at @s run function ogb:create_block/get_block2

# Update the position of the block next tick
execute as @e[type=#ogb:blocks,tag=ogb.block,tag=off_grid_blocks,tag=ogb.summoned] at @s run function ogb:create_block/tick_update2