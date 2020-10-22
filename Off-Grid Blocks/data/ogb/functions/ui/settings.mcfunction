function ogb:ui/actions/clear_chat

tellraw @s {"text": "[⬅Back]\n","color":"yellow","hoverEvent": {"action": "show_text","value": "Go back to the main menu"},"clickEvent": {"action":"run_command","value": "/function ogb:ui/main"}}
tellraw @s ["",{"text": "Settings\n\n","color": "dark_green","bold": true},{"text": "[Defaults...]","color": "light_purple","hoverEvent": {"action": "show_text","value": "Set the default off-grid block visual and default collision type to use when creating a block (this only applies to you)"},"clickEvent": {"action": "run_command","value": "/function ogb:ui/defaults"}}]

function ogb:ui/anti_feedback_chat_message/load