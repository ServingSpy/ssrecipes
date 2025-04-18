#Dev Note: I'm pretty sure there are some blocks that don't have the same item id as their block id.
    #We will have to later identify these and transmute them to their block id
data modify storage ss:recipes dispenser.place.id set from entity @s Item.id
item replace block 18539155 0 18539155 container.0 with dirt
data modify block 18539155 0 18539155 Items[0] set from entity @s Item
execute if items block 18539155 0 18539155 container.0 #ss_recipes:block/that_cant_be_placed_in_survival run return fail
execute if items block 18539155 0 18539155 container.0 #ss_recipes:block/placed_only_on_farmland unless block ~ ~-1 ~ farmland run return fail
scoreboard players set #cocoaLocationFound ss_gen 0
execute if items block 18539155 0 18539155 container.0 cocoa_beans store result score #cocoaLocationFound ss_gen run function ss_recipes:entities/item_frames/on_dispenser/place/item_to_block_transmutes/cocoa_beans/all_specify_cocoa_bean_direction
execute if score #cocoaLocationFound ss_gen matches -1 run return fail

#Dev Note: This function assumes we already checked for a viable block to put the cocoa beans on.
    #At time of writing, this cocoa block condition is checked before this function runs
execute if items block ~ ~ ~ container.0 cocoa_beans run return run function ss_recipes:entities/item_frames/on_dispenser/place/item_to_block_transmutes/cocoa_beans/all_specify_cocoa_bean_direction

#Dev Note: Locking multi-block items is temporary until I can implement them
execute if items block 18539155 0 18539155 container.0 #ss_recipes:block/bigger_than_1x1x1 run return fail
execute unless items block 18539155 0 18539155 container.0 #ss_recipes:any_block_item run return fail


#Dev Note: I check the following items before this transmute function because they need info from the placement position:
    #cocoa beans  
execute positioned 18539155 0 18539155 if items block ~ ~ ~ container.0 #ss_recipes:block/needs_transmuted_for_block_place run function ss_recipes:entities/item_frames/on_dispenser/place/item_to_block_transmutes/all_item_to_block_transmutes
#Dev Note: For debugging purposes, this lets you see what the input to setblock is:
    #tellraw @p {"nbt":"dispenser.place","storage":"ss:recipes"}
function ss_recipes:entities/item_frames/on_dispenser/place/dynamic_place with storage ss:recipes dispenser.place

scoreboard players set #thisItemsCount ss_gen 0
execute store result score #thisItemsCount ss_gen run data get entity @s Item.count
execute if score #thisItemsCount ss_gen matches 1 run return run kill @s
execute store result entity @s Item.count int 1 run scoreboard players remove #thisItemsCount ss_gen 1

scoreboard players set #itemHasBeenPlaced ss_gen 1