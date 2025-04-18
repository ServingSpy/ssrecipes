execute at @n[type=item,dx=1,dy=1,dz=1, nbt={Item:{id: "minecraft:gravel"}}, tag=!ss_recipesRecentlyCrushMade] run summon item ~ ~ ~ {Item:{id:"minecraft:sand", count: 1}, Tags:["ss_recipesRecentlyCrushMade"]}
scoreboard players set #rand ss_gen 0
execute store result score #rand ss_gen run random value 1..10
execute if score #rand ss_gen matches 1 at @n[type=item,dx=1,dy=1,dz=1, nbt={Item:{id: "minecraft:gravel"}}, tag=!ss_recipesRecentlyCrushMade] run summon item ~ ~ ~ {Item:{id:"minecraft:flint", count: 1}, Tags:["ss_recipesRecentlyCrushMade"]} 

execute as @n[type=item,dx=1,dy=1,dz=1, nbt={Item:{id: "minecraft:gravel"}}, tag=!ss_recipesRecentlyCrushMade] run function ss_recipes:entities/item_frames/on_piston/check_for_recipes/reduce_item_entity_count_by_1
scoreboard players set #recipeWasUsed ss_gen 1