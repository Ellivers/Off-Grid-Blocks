scoreboard players add @s obg.raycast 1
execute if block ~ ~ ~ #ogb:air_blocks unless score @s obg.raycast matches 150.. positioned ^ ^ ^.5 run function ogb:raycast/ray
execute unless block ~ ~ ~ #ogb:air_blocks run function ogb:raycast/done