function ogb:ui/actions/clear_chat
scoreboard players operation #ID_temp off_grid_blocks = @s ogb.select_id
execute as @e[type=#ogb:blocks,tag=ogb.block,tag=off_grid_blocks] if score @s ogb.select_id = #ID_temp off_grid_blocks at @s run function ogb:remove_block/block_fall
function ogb:ui/anti_feedback_chat_message/load