function ogb:ui/actions/clear_chat

#define score_holder #OGB_blocks_selected_temp
scoreboard players operation #ID_temp off_grid_blocks = @s ogb.select_id
execute as @e[type=#ogb:blocks,tag=ogb.block,tag=off_grid_blocks] if score @s ogb.select_id = #ID_temp off_grid_blocks run tag @s add ogb.count_entities
execute store result score #OGB_blocks_selected_temp off_grid_blocks if entity @e[type=#ogb:blocks,tag=ogb.block,tag=off_grid_blocks,tag=ogb.count_entities]
execute as @e[type=#ogb:blocks,tag=ogb.block,tag=off_grid_blocks] if score @s ogb.select_id = #ID_temp off_grid_blocks run tag @s remove ogb.count_entities

tellraw @s ["",{"text": "Movement precision: ","color": "aqua","hoverEvent": {"action": "show_text","value": "How big part of a block to move the selected block(s) at a time"}},{"text": "< ","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","value": "Decrease"},"clickEvent": {"action": "run_command","value": "/function ogb:ui/precision/decrease"}},{"score": {"name": "@s","objective": "ogb.move_prec"}},{"text": " >","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","value": "Increase"},"clickEvent": {"action": "run_command","value": "/function ogb:ui/precision/increase"}},{"text": "\n[Reset precision]","color": "dark_purple","hoverEvent": {"action": "show_text","value": "Reset the precision to 1 (one full block)"},"clickEvent": {"action": "run_command","value": "/function ogb:ui/precision/reset"}}]
tellraw @s ["\n",{"text": "[+X]  ","color": "yellow","hoverEvent": {"action": "show_text","value": "Move the selected block(s) towards positive X"},"clickEvent": {"action": "run_command","value": "/function ogb:move_block/player/x"}},{"text": "[+Y]  ","color": "yellow","hoverEvent": {"action": "show_text","value": "Move the selected block(s) towards positive Y"},"clickEvent": {"action": "run_command","value": "/function ogb:move_block/player/y"}},{"text": "[+Z]","color": "yellow","hoverEvent": {"action": "show_text","value": "Move the selected block(s) towards positive Z"},"clickEvent": {"action": "run_command","value": "/function ogb:move_block/player/z"}},{"text": "\n[-X]  ","color": "yellow","hoverEvent": {"action": "show_text","value": "Move the selected block(s) towards negative X"},"clickEvent": {"action": "run_command","value": "/function ogb:move_block/player/-x"}},{"text": "[-Y]  ","color": "yellow","hoverEvent": {"action": "show_text","value": "Move the selected block(s) towards negative Y"},"clickEvent": {"action": "run_command","value": "/function ogb:move_block/player/-y"}},{"text": "[-Z]","color": "yellow","hoverEvent": {"action": "show_text","value": "Move the selected block(s) towards negative Z"},"clickEvent": {"action": "run_command","value": "/function ogb:move_block/player/-z"}},{"text": "\n[Center]","color": "green","hoverEvent": {"action": "show_text","value": "Center the selected block(s)"},"clickEvent": {"action": "run_command","value": "/function ogb:ui/actions/center"}}]
tellraw @s ["",{"text": "\nSelected blocks: ","color": "gold"},{"score": {"name": "#OGB_blocks_selected_temp","objective": "off_grid_blocks"},"color": "gold"},{"text": "\n[Deselect all]  ","color": "aqua","hoverEvent": {"action": "show_text","value": "Deselect all selected off-grid blocks"},"clickEvent": {"action": "run_command","value": "/function ogb:ui/actions/deselect_all"}},{"text": "[Remove all...]","color": "red","hoverEvent": {"action": "show_text","value": "Choose a way to remove the selected blocks"},"clickEvent": {"action": "run_command","value": "/function ogb:ui/remove"}}]

# If there's nothing to see, close the menu
execute if score #OGB_blocks_selected_temp off_grid_blocks matches 0 run function ogb:ui/actions/clear_chat

function ogb:ui/anti_feedback_chat_message/load