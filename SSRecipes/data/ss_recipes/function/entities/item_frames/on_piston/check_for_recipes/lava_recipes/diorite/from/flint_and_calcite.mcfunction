execute at @n[type=item,dx=1,dy=1,dz=1, nbt={Item:{id: "minecraft:calcite"}}, tag=!ss_recipesRecentlyCrushMade] run summon item ~ ~ ~ {Item:{id:"minecraft:diorite", count: 1}, Tags:["ss_recipesRecentlyCrushMade"]}
execute as @n[type=item,dx=1,dy=1,dz=1, nbt={Item:{id: "minecraft:flint"}}, tag=!ss_recipesRecentlyCrushMade] run function ss_recipes:entities/item_frames/on_piston/check_for_recipes/reduce_item_entity_count_by_1
execute as @n[type=item,dx=1,dy=1,dz=1, nbt={Item:{id: "minecraft:calcite"}}, tag=!ss_recipesRecentlyCrushMade] run function ss_recipes:entities/item_frames/on_piston/check_for_recipes/reduce_item_entity_count_by_1
scoreboard players set #recipeWasUsed ss_gen 1
