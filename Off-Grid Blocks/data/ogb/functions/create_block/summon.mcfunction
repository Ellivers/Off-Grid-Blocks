#define tag ogb.block_detector
#define tag ogb.block_detection_marker
scoreboard players operation #ID_temp off_grid_blocks = @s ogb.select_id

forceload add ~170 ~
execute if entity @s[tag=ogb.block_visual.fb,tag=ogb.block_collision.shulker] positioned ~170 ~ ~ run function ogb:create_block/summon/fb_shulker
execute if entity @s[tag=ogb.block_visual.fb,tag=ogb.block_collision.none] positioned ~170 ~ ~ run function ogb:create_block/summon/fb_none
execute if entity @s[tag=ogb.block_visual.fb] run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["ogb.block_placement_marker","off_grid_blocks"]}
execute positioned ~170 ~ ~ as @e[type=#ogb:hitboxes,tag=ogb.block_hitbox,tag=off_grid_blocks,sort=nearest,limit=1] positioned ~-150 ~ ~ run scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=ogb.block_placement_marker,tag=off_grid_blocks,sort=nearest,limit=1] ogb.group_id = @s ogb.group_id
execute if entity @s[tag=ogb.copy_block] positioned ~170 ~ ~ run tag @e[type=#ogb:blocks,tag=ogb.block,tag=off_grid_blocks,sort=nearest,limit=1] add ogb.copy

execute positioned ~170 ~ ~ as @e[type=#ogb:hitboxes,tag=ogb.block_hitbox,tag=off_grid_blocks,sort=nearest,limit=1] at @s run function ogb:select_block/select2
execute if entity @s[type=minecraft:player] run scoreboard players operation @s ogb.latest_block = #SID_temp off_grid_blocks
execute if entity @s[type=!minecraft:player] as @a if score @s ogb.select_id = #ID_temp off_grid_blocks at @s run function ogb:ui/main
# Waits 2 ticks so the potential arrow has time to land and the potential area effect cloud's position is able to be synced with clients
schedule function ogb:create_block/tick_update1 2t
tag @s remove ogb.copy_block