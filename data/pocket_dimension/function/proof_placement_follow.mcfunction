# checks if the anchor has a counterpart pocket dimension
data modify storage pocket_dimension:temp chunk_loaded set value 1b
$execute in $(Dimension) store success storage pocket_dimension:temp chunk_loaded byte 1 run forceload query $(Pos0) $(Pos2)
$execute in $(Dimension) if data storage pocket_dimension:temp {chunk_loaded:0b} run forceload add $(Pos0) $(Pos2)

data modify entity @s data.placed set value 0b
$execute in $(Dimension) positioned $(Pos0) $(Pos1) $(Pos2) if entity @n[tag=pocket_dimension.display.data,distance=0..1,nbt={data:{pocket_id:$(id)}}] run data modify entity @s data.placed set value 1b

$execute in $(Dimension) if data storage pocket_dimension:temp {chunk_loaded:0b} run forceload remove $(Pos0) $(Pos2)
