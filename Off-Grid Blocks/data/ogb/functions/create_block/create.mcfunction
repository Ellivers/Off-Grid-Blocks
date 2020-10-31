# Stone underneath so the block doesn't fall if it's affected by gravity
setblock ~ 254 ~ minecraft:stone
# Clone the picked block up into the air
clone ~ ~ ~ ~ ~ ~ ~ 255 ~ replace move
execute positioned ~ 256 ~ align xyz run summon minecraft:arrow ~.5 ~ ~.5 {Tags:["ogb.block_detector","off_grid_blocks"],Motion:[0d,-1d,0d]}
execute align xyz run summon minecraft:area_effect_cloud ~.5 255 ~.5 {Age: -2147483648, Duration: 2, WaitTime: -2147483648, Tags: ["ogb.block_detection_marker","off_grid_blocks"]}
execute align xyz positioned ~ 255 ~ run scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=ogb.block_detection_marker,tag=off_grid_blocks,sort=nearest,limit=1] ogb.select_id = @s ogb.select_id

execute align xyz positioned ~.5 ~ ~.5 run function ogb:create_block/summon