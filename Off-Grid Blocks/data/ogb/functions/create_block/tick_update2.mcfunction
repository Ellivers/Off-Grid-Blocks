tag @s remove ogb.summoned
execute if entity @s[tag=ogb.block_visual.fb] run function ogb:create_block/update.fb

execute at @s[type=minecraft:area_effect_cloud] positioned ~ ~ ~ run function ogb:move_block/block/center/center