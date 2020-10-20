# Create objectives
scoreboard objectives add off_grid_blocks dummy
scoreboard objectives add ogb.coas_click minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add obg.coas_drop minecraft.dropped:minecraft.carrot_on_a_stick
scoreboard objectives add ogb.select_id dummy
scoreboard objectives add ogb.latest_block dummy
scoreboard objectives add ogb.group_id dummy
scoreboard objectives add ogb.move_prec dummy
scoreboard objectives add obg.raycast dummy
scoreboard objectives add ogb.posX dummy
scoreboard objectives add ogb.posY dummy
scoreboard objectives add ogb.posZ dummy

scoreboard players set #2 off_grid_blocks 2
execute unless score #current_select_id off_grid_blocks matches 0.. run scoreboard players set #current_select_id off_grid_blocks 0
execute unless score #block_group_id off_grid_blocks matches 0.. run scoreboard players set #block_group_id off_grid_blocks 0

scoreboard players set $version off_grid_blocks 1

#define tag off_grid_blocks
#define tag ogb.block
#define tag ogb.block_hitbox
#define tag ogb.block_visual
#define tag ogb.block_visual.fb

#define score_holder #ID_temp
#define score_holder #GID_temp