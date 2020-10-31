loot spawn ~ ~ ~ loot ogb:item_drop
data modify entity @e[type=minecraft:item,nbt={Item:{tag:{OGB_BlockDrop:1b}}},sort=nearest,limit=1] Item.id set from entity @s BlockState.Name
data remove entity @e[type=minecraft:item,nbt={Item:{tag:{OGB_BlockDrop:1b}}},sort=nearest,limit=1] Item.tag.OGB_BlockDrop
kill @s