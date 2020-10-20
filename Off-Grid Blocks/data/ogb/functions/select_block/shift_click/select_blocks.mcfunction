tag @s add ogb.group_selected
execute store result score @s ogb.posX run data get entity @s Pos[0]
execute store result score @s ogb.posY run data get entity @s Pos[1]
execute store result score @s ogb.posZ run data get entity @s Pos[2]

# TODO: Fix this. 27 combinations needed.

execute if score #directionX off_grid_blocks matches 1 if score @s ogb.posX >= #pos1X off_grid_blocks if score @s ogb.posX <= #pos2X off_grid_blocks run function ogb:select_block/select2
execute if entity @s[tag=!ogb.dont_select_anymore] if score #directionX off_grid_blocks matches -1 if score @s ogb.posX <= #pos1X off_grid_blocks if score @s ogb.posX >= #pos2X off_grid_blocks run function ogb:select_block/select2

execute if entity @s[tag=!ogb.dont_select_anymore] if score #directionY off_grid_blocks matches 1 if score @s ogb.posY >= #pos1Y off_grid_blocks if score @s ogb.posY <= #pos2Y off_grid_blocks run function ogb:select_block/select2
execute if entity @s[tag=!ogb.dont_select_anymore] if score #directionY off_grid_blocks matches -1 if score @s ogb.posY <= #pos1Y off_grid_blocks if score @s ogb.posY >= #pos2Y off_grid_blocks run function ogb:select_block/select2

execute if entity @s[tag=!ogb.dont_select_anymore] if score #directionZ off_grid_blocks matches 1 if score @s ogb.posZ >= #pos1Z off_grid_blocks if score @s ogb.posZ <= #pos2Z off_grid_blocks run function ogb:select_block/select2
execute if entity @s[tag=!ogb.dont_select_anymore] if score #directionZ off_grid_blocks matches -1 if score @s ogb.posZ <= #pos1Z off_grid_blocks if score @s ogb.posZ >= #pos2Z off_grid_blocks run function ogb:select_block/select2

tag @s remove ogb.group_selected
tag @s remove ogb.dont_select_anymore