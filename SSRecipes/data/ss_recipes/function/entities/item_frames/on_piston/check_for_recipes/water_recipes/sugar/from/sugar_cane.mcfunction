execute at @n[type=item,dx=1,dy=1,dz=1, nbt={Item:{id: "minecraft:sugar_cane"}}, tag=!ss_recipesRecentlyCrushMade] run summon item ~ ~ ~ {Item:{id:"minecraft:sugar", count: 1}, Tags:["ss_recipesRecentlyCrushMade"]}
execute as @n[type=item,dx=1,dy=1,dz=1, nbt={Item:{id: "minecraft:sugar_cane"}}, tag=!ss_recipesRecentlyCrushMade] run function ss_recipes:entities/item_frames/on_piston/check_for_recipes/reduce_item_entity_count_by_1
scoreboard players set #recipeWasUsed ss_gen 1
