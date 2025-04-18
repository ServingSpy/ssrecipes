#Flint + Gravel -> Andesite
#Flint + Calcite -> Diorite
#Flint + Red Sand -> Granite
#Basalt + Coral = tuff

#Dev Note: I try to make combination recipes run first so the player is guaranteed at least 1 successful mix if they're trying to do that
scoreboard players set #recipeWasUsed ss_gen 0

execute if entity @n[type=item,dx=1,dy=1,dz=1, nbt={Item:{id: "minecraft:flint"}}, tag=!ss_recipesRecentlyCrushMade] if entity @n[type=item,dx=1,dy=1,dz=1, nbt={Item:{id: "minecraft:gravel"}}, tag=!ss_recipesRecentlyCrushMade] run function ss_recipes:entities/item_frames/on_piston/check_for_recipes/lava_recipes/andesite/from/flint_and_gravel
execute if entity @n[type=item,dx=1,dy=1,dz=1, nbt={Item:{id: "minecraft:flint"}}, tag=!ss_recipesRecentlyCrushMade] if entity @n[type=item,dx=1,dy=1,dz=1, nbt={Item:{id: "minecraft:calcite"}}, tag=!ss_recipesRecentlyCrushMade] run function ss_recipes:entities/item_frames/on_piston/check_for_recipes/lava_recipes/diorite/from/flint_and_calcite
execute if entity @n[type=item,dx=1,dy=1,dz=1, nbt={Item:{id: "minecraft:flint"}}, tag=!ss_recipesRecentlyCrushMade] if entity @n[type=item,dx=1,dy=1,dz=1, nbt={Item:{id: "minecraft:red_sand"}}, tag=!ss_recipesRecentlyCrushMade] run function ss_recipes:entities/item_frames/on_piston/check_for_recipes/lava_recipes/granite/from/flint_and_red_sand
execute if entity @n[type=item,dx=1,dy=1,dz=1, nbt={Item:{id: "minecraft:basalt"}}, tag=!ss_recipesRecentlyCrushMade] run function ss_recipes:entities/item_frames/on_piston/check_for_recipes/lava_recipes/tuff/from/basalt_and_choral/all_crush_basalt_and_choral
execute if entity @n[type=item,dx=1,dy=1,dz=1, nbt={Item:{id: "minecraft:blackstone"}}, tag=!ss_recipesRecentlyCrushMade] if entity @n[type=item,dx=1,dy=1,dz=1, nbt={Item:{id: "minecraft:lava_bucket"}}, tag=!ss_recipesRecentlyCrushMade] run function ss_recipes:entities/item_frames/on_piston/check_for_recipes/lava_recipes/magma_block/from/blackstone_and_lava

execute unless score #recipeWasUsed ss_gen matches 0 run function ss_recipes:entities/item_frames/on_piston/check_for_recipes/lava_recipes/all_lava_recipes