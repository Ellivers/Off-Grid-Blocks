execute as @e[type=#ogb:hitboxes,tag=ogb.block_hitbox,tag=off_grid_blocks] at @s unless entity @e[type=#ogb:blocks,tag=ogb.block,tag=off_grid_blocks,dx=0] run tp @s ~ -250 ~