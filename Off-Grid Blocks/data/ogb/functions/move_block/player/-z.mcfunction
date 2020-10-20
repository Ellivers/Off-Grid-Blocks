# Get the block movement precision by diving 1 (multiplied by one million because scoreboards are ints only) by the selected precision
scoreboard players set #move_prec_temp off_grid_blocks 1000000
scoreboard players operation #move_prec_temp off_grid_blocks /= @s ogb.move_prec

# Set a fakeplayer's ID to yours to optimize performance when selecting the entities with your ID
# Tells all your blocks to move in teh negative Z direction
scoreboard players operation #temp_ID off_grid_blocks = @s ogb.select_id
execute as @e[type=#ogb:blocks,tag=ogb.block,tag=off_grid_blocks] if score @s ogb.select_id = #temp_ID off_grid_blocks run function ogb:move_block/block/-z

tag @s add nospaceplzthx
function ogb:ui/anti_feedback_chat_message/load