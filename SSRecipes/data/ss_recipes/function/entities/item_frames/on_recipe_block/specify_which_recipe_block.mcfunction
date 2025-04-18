
execute if block ~ ~ ~ #ss_recipes:pistons if items entity @s container.0 anvil run return run function ss_recipes:entities/item_frames/on_piston/all_item_frame_on_piston
execute if block ~ ~ ~ hopper if items entity @s container.0 bucket run return run function ss_recipes:entities/item_frames/on_hopper/initial_checks
execute if block ~ ~ ~ dispenser if items entity @s container.0 diamond_pickaxe run function ss_recipes:entities/item_frames/on_dispenser/break/all_item_frame_break_dispenser
execute if block ~ ~ ~ dispenser if items entity @s container.0 diamond_hoe run return run function ss_recipes:entities/item_frames/on_dispenser/place/all_item_frame_place_dispenser
#Dev Note: I used to use a marker instead of an item frame. Fix file placement later
execute if block ~ ~ ~ furnace if block ~ ~-1 ~ soul_campfire if items entity @s container.0 #ss_recipes:skulls run function ss_recipes:entities/markers/soul_campfire/furnace/all_soul_campfire_furnace_markers
