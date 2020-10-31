tag @s remove ogb.selected

scoreboard players operation #GID_temp off_grid_blocks = @s ogb.group_id
execute as @e[type=#ogb:blocks,tag=ogb.block,tag=off_grid_blocks,sort=nearest,limit=1] if score @s ogb.group_id = #GID_temp off_grid_blocks run scoreboard players reset @s ogb.select_id
scoreboard players reset @s ogb.select_id
execute if entity @s[type=minecraft:shulker] run effect clear @s minecraft:glowing
execute if entity @s[type=minecraft:pig,tag=ogb.block_visual.fb] run tag @s remove ogb.particles