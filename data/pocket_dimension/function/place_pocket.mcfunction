# Place Pocket Dimension Function
data modify storage pocket_dimension:temp pocket_placed set value 1b
execute run function pocket_dimension:check_4_open_pocket with entity @s equipment.mainhand.components.minecraft:custom_data
# Place or refund pocket dimension item based on placement status
execute if data storage pocket_dimension:temp {pocket_placed:0b} run function pocket_dimension:place_pocket_follow with entity @s equipment.mainhand.components.minecraft:custom_data
execute if data storage pocket_dimension:temp {pocket_placed:1b} run function pocket_dimension:refund_pocket_item with entity @s equipment.mainhand.components.minecraft:custom_data
kill @s[type=armor_stand,tag=pocket_dimension.block_initiator]

#NOTE: If the anchor thinks it is placed, but no pocket exists, it will no longer be possible to place a pocket. Needs a fix.