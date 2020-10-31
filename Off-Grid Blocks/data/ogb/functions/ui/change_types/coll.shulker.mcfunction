# coll.shulker = collision.shulker
# Sets the default collision for this player to a shulker
tag @s add ogb.set_block_collision.shulker
tag @s remove ogb.set_block_collision.none
function ogb:ui/change_types