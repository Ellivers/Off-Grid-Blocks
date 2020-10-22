# Temporarily store the position of this block as position 1
execute store result score #pos1X off_grid_blocks run data get entity @s Pos[0]
execute store result score #pos1Y off_grid_blocks run data get entity @s Pos[1]
execute store result score #pos1Z off_grid_blocks run data get entity @s Pos[2]

# Check in which area blocks need to be selected
execute if score #pos1X off_grid_blocks > #pos2X off_grid_blocks run scoreboard players set #directionX off_grid_blocks -1
execute if score #pos1X off_grid_blocks <= #pos2X off_grid_blocks run scoreboard players set #directionX off_grid_blocks 1
execute if score #pos1Y off_grid_blocks > #pos2Y off_grid_blocks run scoreboard players set #directionY off_grid_blocks -1
execute if score #pos1Y off_grid_blocks <= #pos2Y off_grid_blocks run scoreboard players set #directionY off_grid_blocks 1
execute if score #pos1Z off_grid_blocks > #pos2Z off_grid_blocks run scoreboard players set #directionZ off_grid_blocks -1
execute if score #pos1Z off_grid_blocks <= #pos2Z off_grid_blocks run scoreboard players set #directionZ off_grid_blocks 1

# Select blocks
execute as @e[type=#ogb:hitboxes,tag=ogb.block_hitbox,tag=off_grid_blocks,tag=!ogb.dont_include] at @s run function ogb:select_block/shift_click/select_blocks

scoreboard players operation #SID_temp off_grid_blocks = @s ogb.group_id

tag @e[type=#ogb:hitboxes,tag=ogb.block_hitbox,tag=off_grid_blocks,tag=ogb.dont_include] remove dont_include