# Move the selected block(s) towards negative Y

# Move the block with the selected precision (multiplied by one million)
execute store result score @s ogb.move_prec run data get entity @s Pos[1] 1000000
scoreboard players operation @s ogb.move_prec -= #move_prec_temp off_grid_blocks
execute store result entity @s Pos[1] double 0.000001 run scoreboard players get @s ogb.move_prec

execute if entity @s[type=minecraft:area_effect_cloud] run function ogb:move_block/block/update_position