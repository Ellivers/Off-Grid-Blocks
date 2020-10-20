function ogb:ui/actions/clear_chat
tellraw @s [{"text": "[Open block menu...]","color": "aqua","hoverEvent": {"action": "show_text","value": "Open the menu for off-grid blocks"},"clickEvent": {"action": "run_command","value": "/function ogb:ui/main"}}]
function ogb:ui/anti_feedback_chat_message/load