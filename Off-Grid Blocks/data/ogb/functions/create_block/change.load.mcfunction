tag @s add ogb.copy_block
tag @s add ogb.delete_me
tag @s remove ogb.block_collision.shulker
tag @s remove ogb.block_collision.none
tag @s remove ogb.block_visual.fb
execute if score #collision_type_temp off_grid_blocks matches 0 run tag @s add ogb.block_collision.shulker
execute if score #collision_type_temp off_grid_blocks matches 1 run tag @s add ogb.block_collision.none
execute if score #visual_type_temp off_grid_blocks matches 0 run tag @s add ogb.block_visual.fb
function ogb:create_block/summon