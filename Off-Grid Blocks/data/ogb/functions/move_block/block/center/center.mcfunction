execute if entity @s[type=minecraft:area_effect_cloud] run function ogb:move_block/block/center/center.aec
execute if entity @s[type=minecraft:armor_stand,nbt=!{Small:1b}] run function ogb:move_block/block/center/center.as_big
execute if entity @s[type=minecraft:armor_stand,nbt={Small:1b}] run function ogb:move_block/block/center/center.as_small