data modify entity @s PickupDelay set value 0s
tp @p[scores={obg.coas_drop=1..}]
execute as @p[scores={obg.coas_drop=1..}] at @s run function ogb:ui/drop