#Dev Note: I try to make combination recipes run first so the player is guaranteed at least 1 successful mix if they're trying to do that

scoreboard players set #recipeWasUsed ss_gen 0
execute if entity @n[type=item,dx=1,dy=1,dz=1, nbt={Item:{id: "minecraft:iron_nugget"}}, tag=!ss_recipesRecentlyCrushMade] if entity @n[type=item,dx=1,dy=1,dz=1, nbt={Item:{id: "minecraft:sand"}}, tag=!ss_recipesRecentlyCrushMade] run function ss_recipes:entities/item_frames/on_piston/check_for_recipes/water_recipes/red_sand/from/iron_and_sand
execute if entity @n[type=item,dx=1,dy=1,dz=1, nbt={Item:{id: "minecraft:dripstone_block"}}, tag=!ss_recipesRecentlyCrushMade] run function ss_recipes:entities/item_frames/on_piston/check_for_recipes/water_recipes/clay/from/dripstone_block
execute if entity @n[type=item,dx=1,dy=1,dz=1, nbt={Item:{id: "minecraft:gravel"}}, tag=!ss_recipesRecentlyCrushMade] run function ss_recipes:entities/item_frames/on_piston/check_for_recipes/water_recipes/sand/from/gravel
execute if entity @n[type=item,dx=1,dy=1,dz=1, nbt={Item:{id: "minecraft:sandstone"}}, tag=!ss_recipesRecentlyCrushMade] run function ss_recipes:entities/item_frames/on_piston/check_for_recipes/water_recipes/sand/from/sandstone
execute if entity @n[type=item,dx=1,dy=1,dz=1, nbt={Item:{id: "minecraft:cobblestone"}}, tag=!ss_recipesRecentlyCrushMade] run function ss_recipes:entities/item_frames/on_piston/check_for_recipes/water_recipes/gravel/from/cobblestone
execute if entity @n[type=item,dx=1,dy=1,dz=1, nbt={Item:{id: "minecraft:stone"}}, tag=!ss_recipesRecentlyCrushMade] run function ss_recipes:entities/item_frames/on_piston/check_for_recipes/water_recipes/cobblestone/from/stone
execute if entity @n[type=item,dx=1,dy=1,dz=1, nbt={Item:{id: "minecraft:tuff"}}, tag=!ss_recipesRecentlyCrushMade] run function ss_recipes:entities/item_frames/on_piston/check_for_recipes/water_recipes/break_down/tuff/all_break_down_tuff
execute if entity @n[type=item,dx=1,dy=1,dz=1, nbt={Item:{id: "minecraft:sugar_cane"}}, tag=!ss_recipesRecentlyCrushMade] run function ss_recipes:entities/item_frames/on_piston/check_for_recipes/water_recipes/sugar/from/sugar_cane
execute if entity @n[type=item,dx=1,dy=1,dz=1, nbt={Item:{id: "minecraft:bone"}}, tag=!ss_recipesRecentlyCrushMade] run function ss_recipes:entities/item_frames/on_piston/check_for_recipes/water_recipes/bone_meal/from/bone


execute unless score #recipeWasUsed ss_gen matches 0 run function ss_recipes:entities/item_frames/on_piston/check_for_recipes/water_recipes/all_water_recipes