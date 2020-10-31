# (FB stands for Falling Block)
summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["ogb.block","off_grid_blocks","ogb.block_visual.fb","ogb.block_collision.shulker","ogb.summoned"],Passengers:[{id:"minecraft:falling_block",Time:-2147483648,NoGravity:1b,Tags:["ogb.block_visual","off_grid_blocks"]},{id:"minecraft:shulker",NoAI:1b,NoGravity:1b,Invulnerable:1b,Silent:1b,ActiveEffects:[{Id:14b,Duration:2147483647,ShowParticles:0b}],AbsorptionAmount:999999999999f,Tags:["ogb.block_collision","off_grid_blocks","ogb.block_hitbox","ogb.block_visual.fb"]}]}

# Assign group ID
scoreboard players add #block_group_id off_grid_blocks 1
execute as @e[tag=off_grid_blocks,distance=..1,sort=nearest,limit=3] unless score @s ogb.group_id matches 1.. run scoreboard players operation @s ogb.group_id = #block_group_id off_grid_blocks