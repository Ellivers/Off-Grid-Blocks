function ogb:ui/actions/clear_chat

tellraw @s {"text": "[⬅Back]\n","color":"yellow","hoverEvent": {"action": "show_text","value": "Go back to the main menu"},"clickEvent": {"action":"run_command","value": "/function ogb:ui/main"}}
tellraw @s {"text": "Change the block type\n","color": "light_purple","bold": true}

execute if entity @s[tag=!ogb.set_block_collision.shulker,tag=!ogb.set_block_collision.none] run tag @s add ogb.set_block_collision.shulker
execute if entity @s[tag=!ogb.set_block_visual.fb] run tag @s add ogb.set_block_visual.fb

tellraw @s {"text": "Visual:","bold": true}
execute if entity @s[tag=!ogb.set_block_visual.fb] run tellraw @s {"text": "[Full block]","color": "green","hoverEvent": {"action": "show_text","value": "Use a full block as the block visual (falling block entity)"},"clickEvent": {"action": "run_command","value": "/function ogb:ui/change_types/vis.fb"}}
execute if entity @s[tag=ogb.set_block_visual.fb] run tellraw @s {"text": "[Full block]","color": "gray","hoverEvent": {"action": "show_text","value": "Use a full block as the block visual (falling block entity)"}}

tellraw @s {"text": "\nCollision:","bold": true}
execute if entity @s[tag=!ogb.set_block_collision.none] run tellraw @s {"text": "[None]","color": "green","hoverEvent": {"action": "show_text","value": "No collision"},"clickEvent": {"action": "run_command","value": "/function ogb:ui/change_types/coll.none"}}
execute if entity @s[tag=ogb.set_block_collision.none] run tellraw @s {"text": "[None]","color": "gray","hoverEvent": {"action": "show_text","value": "No collision [selected]"}}
execute if entity @s[tag=!ogb.set_block_collision.shulker] run tellraw @s {"text": "[Full moveable block]","color": "green","hoverEvent": {"action": "show_text","value": "Use a full moveable block as the collision (shulker entity)"},"clickEvent": {"action": "run_command","value": "/function ogb:ui/change_types/coll.shulker"}}
execute if entity @s[tag=ogb.set_block_collision.shulker] run tellraw @s {"text": "[Full moveable block]","color": "gray","hoverEvent": {"action": "show_text","value": "Use a full moveable block as the collision (shulker entity) [selected]"}}

tellraw @s {"text": "\n[Go]","color": "gold","hoverEvent": {"action": "show_text","value": "Change the type of the selected block(s) to what you've selected above"},"clickEvent": {"action": "run_command","value": "/function ogb:create_block/change"}}

function ogb:ui/anti_feedback_chat_message/load