# coll.none = collision.none
# Sets the default collision for this player to nothing (with a pig as a hitbox)
tag @s add ogb.set_block_collision.none
tag @s remove ogb.set_block_collision.shulker
function ogb:ui/change_types