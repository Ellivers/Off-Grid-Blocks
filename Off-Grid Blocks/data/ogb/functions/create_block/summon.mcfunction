#define tag ogb.block_detector
#define tag ogb.block_detection_marker

# Stone underneath so the block doesn't fall if it's affected by gravity
setblock ~ 254 ~ minecraft:stone
# Clone the picked block up into the air
clone ~ ~ ~ ~ ~ ~ ~ 255 ~ replace move
execute positioned ~ 256 ~ align xyz run summon minecraft:arrow ~.5 ~ ~.5 {Tags:["ogb.block_detector","off_grid_blocks"],Motion:[0d,-1d,0d]}
execute align xyz run summon minecraft:area_effect_cloud ~.5 255 ~.5 {Age: -2147483648, Duration: 2, WaitTime: -2147483648, Tags: ["ogb.block_detection_marker","off_grid_blocks"]}
execute align xyz positioned ~ 255 ~ run scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=ogb.block_detection_marker,tag=off_grid_blocks,sort=nearest,limit=1] ogb.select_id = @s ogb.select_id

forceload add ~200 ~
execute positioned ~200 ~ ~ run function ogb:create_block/summon/fb_shulker
execute if entity @s[tag=ogb.block_visual.fb,tag=ogb.block_collision.shulker] align xyz run summon minecraft:area_effect_cloud ~.5 ~ ~.5 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["ogb.block_placement_marker","off_grid_blocks"]}

scoreboard players operation #ID_temp off_grid_blocks = @s ogb.select_id
execute positioned ~200 ~ ~ as @e[type=#ogb:hitboxes,tag=ogb.block_hitbox,tag=off_grid_blocks,sort=nearest,limit=1] at @s run function ogb:select_block/select2
scoreboard players operation @s ogb.latest_block = #SID_temp off_grid_blocks
function ogb:ui/main
# Waits 2 ticks so the arrow has time to land and the area effect cloud's position is able to be synced with clients
schedule function ogb:create_block/tick_update1 2t