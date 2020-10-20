execute as @e[type=minecraft:item,nbt={Item:{tag:{OGB_Tool:1b}}},nbt=!{OnGround:1b},sort=nearest,limit=1] at @s run function ogb:drop_wand/item
scoreboard players reset @s obg.coas_drop