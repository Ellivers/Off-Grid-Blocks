scoreboard players reset @s ogb.coas_click
scoreboard players reset @s obg.raycast

#define tag ogb.block_collision.shulker

execute unless score @s ogb.select_id matches 1.. run function ogb:raycast/assign_id
execute if entity @s[tag=!ogb.block_visual.fb] run tag @s add ogb.block_visual.fb
execute if entity @s[tag=!ogb.block_collision.shulker] run tag @s add ogb.block_collision.shulker

execute if predicate ogb:holding_tool anchored eyes positioned ^ ^ ^.5 run function ogb:raycast/ray