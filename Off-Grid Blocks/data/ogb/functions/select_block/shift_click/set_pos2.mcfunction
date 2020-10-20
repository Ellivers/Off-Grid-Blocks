tag @s add ogb.dont_include
execute store result score #pos2X off_grid_blocks run data get entity @s Pos[0]
execute store result score #pos2Y off_grid_blocks run data get entity @s Pos[1]
execute store result score #pos2Z off_grid_blocks run data get entity @s Pos[2]
scoreboard players set #LB_found off_grid_blocks 1