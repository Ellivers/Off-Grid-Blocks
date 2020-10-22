function ogb:ui/actions/clear_chat

tellraw @s {"text": "[⬅Back]\n","color":"yellow","hoverEvent": {"action": "show_text","value": "Go back to the settings menu"},"clickEvent": {"action":"run_command","value": "/function ogb:ui/settings"}}
tellraw @s {"text": "Defaults\n","color": "light_purple","bold": true}

tellraw @s {"text": "Visual:","bold": true}
execute if entity @s[tag=!ogb.block_visual.fb] run tellraw @s {"text": "[Full block]","color": "green","hoverEvent": {"action": "show_text","value": "Use a full block as the block visual (falling block entity)"},"clickEvent": {"action": "run_command","value": "/function ogb:ui/select_default/vis.fb"}}
execute if entity @s[tag=ogb.block_visual.fb] run tellraw @s {"text": "[Full block]","color": "gray","hoverEvent": {"action": "show_text","value": "Use a full block as the block visual (falling block entity)"}}

tellraw @s {"text": "\nCollision:","bold": true}
execute if entity @s[tag=!ogb.block_collision.shulker] run tellraw @s {"text": "[Full moveable block]","color": "green","hoverEvent": {"action": "show_text","value": "Use a full moveable block as the collision (shulker entity)"},"clickEvent": {"action": "run_command","value": "/function ogb:ui/select_default/coll.shulker"}}
execute if entity @s[tag=ogb.block_collision.shulker] run tellraw @s {"text": "[Full moveable block]","color": "gray","hoverEvent": {"action": "show_text","value": "Use a full moveable block as the collision (shulker entity)"}}

function ogb:ui/anti_feedback_chat_message/load