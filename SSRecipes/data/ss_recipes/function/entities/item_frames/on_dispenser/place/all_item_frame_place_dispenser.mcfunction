#Dev Note: If and unless order intentionally swapped here, prioritizing the condition most likely to fail in each case
execute unless block ~ ~1 ~ #ss_recipes:item_frame_survivable unless entity @s[tag=ss_recipesFixedRecIFrame] run function ss_recipes:entities/item_frames/on_recipe_block/protect_iframe/fix
execute if entity @s[tag=ss_recipesFixedRecIFrame] if block ~ ~1 ~ #ss_recipes:item_frame_survivable run function ss_recipes:entities/item_frames/on_recipe_block/protect_iframe/unfix

execute if block ~ ~ ~ dispenser[facing=up] run scoreboard players set #dispenserDirection ss_gen 1
execute if block ~ ~ ~ dispenser[facing=down] run scoreboard players set #dispenserDirection ss_gen 2
execute if block ~ ~ ~ dispenser[facing=north] run scoreboard players set #dispenserDirection ss_gen 3
execute if block ~ ~ ~ dispenser[facing=east] run scoreboard players set #dispenserDirection ss_gen 4
execute if block ~ ~ ~ dispenser[facing=south] run scoreboard players set #dispenserDirection ss_gen 5
execute if block ~ ~ ~ dispenser[facing=west] run scoreboard players set #dispenserDirection ss_gen 6

scoreboard players set #thisBlockIsPowered ss_gen 0
execute store result score #thisBlockIsPowered ss_gen run function ss_recipes:entities/item_frames/check/for/power/into/this_block/all_check_for_power_into_this_block
execute if score #thisBlockIsPowered ss_gen matches 0 run return fail

#Dev Question: Would it be more efficient to have the "check if we can place in this block" condition go before the redstone
    #The condition would let us keep from running redstone checks more often which is good
    #But it would also split up our "at block" commands
scoreboard players set #blockBeingPlacedInto ss_gen 0
execute if score #dispenserDirection ss_gen matches 1 positioned ~ ~1 ~ if block ~ ~ ~ air run function ss_recipes:entities/item_frames/on_dispenser/place/all_at_location_placed_at
execute if score #dispenserDirection ss_gen matches 2 positioned ~ ~-1 ~ if block ~ ~ ~ air run function ss_recipes:entities/item_frames/on_dispenser/place/all_at_location_placed_at
execute if score #dispenserDirection ss_gen matches 3 positioned ~ ~ ~-1 if block ~ ~ ~ air run function ss_recipes:entities/item_frames/on_dispenser/place/all_at_location_placed_at
execute if score #dispenserDirection ss_gen matches 4 positioned ~1 ~ ~ if block ~ ~ ~ air run function ss_recipes:entities/item_frames/on_dispenser/place/all_at_location_placed_at
execute if score #dispenserDirection ss_gen matches 5 positioned ~ ~ ~1 if block ~ ~ ~ air run function ss_recipes:entities/item_frames/on_dispenser/place/all_at_location_placed_at
execute if score #dispenserDirection ss_gen matches 6 positioned ~-1 ~ ~ if block ~ ~ ~ air run function ss_recipes:entities/item_frames/on_dispenser/place/all_at_location_placed_at
execute if score #blockBeingPlacedInto ss_gen matches 0 run return fail

#Dev Note: I considered doing @e[sort=furthest] for the ones with negative x and z so there was a better chance of being closer to the dispenser
    #But that would only be closer in one axis and better consistent I suppose
scoreboard players set #itemHasBeenPlaced ss_gen 0
execute if score #dispenserDirection ss_gen matches 1 positioned ~ ~1 ~ align xyz as @e[type=item,dx=1,dy=1,dz=1] run function ss_recipes:entities/item_frames/on_dispenser/place/try_to_place_each_item_till_one_works
execute if score #dispenserDirection ss_gen matches 2 positioned ~ ~-1 ~ align xyz as @e[type=item,dx=1,dy=1,dz=1] run function ss_recipes:entities/item_frames/on_dispenser/place/try_to_place_each_item_till_one_works
execute if score #dispenserDirection ss_gen matches 3 positioned ~ ~ ~-1 align xyz as @e[type=item,dx=1,dy=1,dz=1] run function ss_recipes:entities/item_frames/on_dispenser/place/try_to_place_each_item_till_one_works
execute if score #dispenserDirection ss_gen matches 4 positioned ~1 ~ ~ align xyz as @e[type=item,dx=1,dy=1,dz=1] run function ss_recipes:entities/item_frames/on_dispenser/place/try_to_place_each_item_till_one_works
execute if score #dispenserDirection ss_gen matches 5 positioned ~ ~ ~1 align xyz as @e[type=item,dx=1,dy=1,dz=1] run function ss_recipes:entities/item_frames/on_dispenser/place/try_to_place_each_item_till_one_works
execute if score #dispenserDirection ss_gen matches 6 positioned ~-1 ~ ~ align xyz as @e[type=item,dx=1,dy=1,dz=1] run function ss_recipes:entities/item_frames/on_dispenser/place/try_to_place_each_item_till_one_works

