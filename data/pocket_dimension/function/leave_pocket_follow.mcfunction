$execute in $(Dimension) run tp @s $(Pos0) $(Pos1) $(Pos2) $(Rotation0) ~

$execute in pocket_dimension:realm run data modify entity @n[tag=pocket_dimension.anchor,nbt={data:{id:$(id)}}] data.placed set value 0b


tag @s remove pocket_dimension.highjacker