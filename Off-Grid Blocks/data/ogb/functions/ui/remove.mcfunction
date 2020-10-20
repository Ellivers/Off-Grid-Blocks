function ogb:ui/actions/clear_chat

scoreboard players operation #ID_temp off_grid_blocks = @s ogb.select_id
execute as @e[type=#ogb:blocks,tag=ogb.block,tag=off_grid_blocks] if score @s ogb.select_id = #ID_temp off_grid_blocks run tag @s add ogb.count_entities
execute store result score #OGB_blocks_selected_temp off_grid_blocks if entity @e[type=#ogb:blocks,tag=ogb.block,tag=off_grid_blocks,tag=ogb.count_entities]
execute as @e[type=#ogb:blocks,tag=ogb.block,tag=off_grid_blocks] if score @s ogb.select_id = #ID_temp off_grid_blocks run tag @s remove ogb.count_entities

tellraw @s {"text": "[⬅Back]\n\n","color":"yellow","hoverEvent": {"action": "show_text","value": "Go back to the main menu"},"clickEvent": {"action":"run_command","value": "/function ogb:ui/main"}}

execute if score #OGB_blocks_selected_temp off_grid_blocks matches 1 run tellraw @s ["",{"text": "How would you like to remove this block?\n\n","color": "gold"},{"text": "[Erase it]\n\n","color": "red","hoverEvent": {"action": "show_text","value": "Simply delete the selected block"},"clickEvent": {"action": "run_command","value": "/function ogb:ui/remove/delete"}},{"text": "[Drop it]","color": "aqua","hoverEvent": {"action": "show_text","value": "Make it drop as an item"},"clickEvent": {"action": "run_command","value": "/function ogb:remove_block/drop_item"}}]
execute if score #OGB_blocks_selected_temp off_grid_blocks matches 2.. run tellraw @s ["",{"text": "How would you like to remove these blocks?\n\n","color": "gold"},{"text": "[Erase them]\n\n","color": "red","hoverEvent": {"action": "show_text","value": "Simply delete the selected blocks"},"clickEvent": {"action": "run_command","value": "/function ogb:ui/remove/delete"}},{"text": "[Drop them]","color": "aqua","hoverEvent": {"action": "show_text","value": "Make them drop as items"},"clickEvent": {"action": "run_command","value": "/function ogb:remove_block/drop_item"}}]

function ogb:ui/anti_feedback_chat_message/load