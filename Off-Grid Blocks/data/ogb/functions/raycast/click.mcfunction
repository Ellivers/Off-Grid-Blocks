scoreboard players reset @s ogb.coas_click
scoreboard players reset @s obg.raycast

execute unless score @s ogb.select_id matches 1.. run function ogb:raycast/assign_id

execute if predicate ogb:holding_tool anchored eyes positioned ^ ^ ^.5 run function ogb:raycast/ray