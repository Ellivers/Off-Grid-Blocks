say hello there?
scoreboard players operation #SID_temp off_grid_blocks = @s ogb.group_id
execute unless entity @s[tag=ogb.selected] run function ogb:select_block/select3
execute if entity @s[tag=ogb.selected,tag=!ogb.weirdness_prevention] run function ogb:select_block/deselect
tag @s remove ogb.weirdness_prevention
execute if entity @s[tag=ogb.group_selected] run tag @s add ogb.dont_select_anymore