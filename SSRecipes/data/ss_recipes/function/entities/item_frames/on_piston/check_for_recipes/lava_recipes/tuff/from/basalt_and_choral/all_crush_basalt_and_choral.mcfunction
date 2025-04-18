function ss_recipes:entities/item_frames/on_piston/check_for_recipes/lava_recipes/tuff/from/basalt_and_choral/identify_the_choral
execute if score #choralFound ss_gen matches 0 run return fail

execute at @n[type=item,dx=1,dy=1,dz=1, nbt={Item:{id: "minecraft:basalt"}}, tag=!ss_recipesRecentlyCrushMade] run summon item ~ ~ ~ {Item:{id:"minecraft:tuff", count: 1}, Tags:["ss_recipesRecentlyCrushMade"]}
execute as @n[type=item,dx=1,dy=1,dz=1, nbt={Item:{id: "minecraft:basalt"}}, tag=!ss_recipesRecentlyCrushMade] run function ss_recipes:entities/item_frames/on_piston/check_for_recipes/reduce_item_entity_count_by_1
scoreboard players set #rand ss_gen 0
execute store result score #rand ss_gen run random value 1..20
execute if score #rand ss_gen matches 1 at @n[type=item,dx=1,dy=1,dz=1, nbt={Item:{id: "minecraft:basalt"}}, tag=!ss_recipesRecentlyCrushMade] run summon item ~ ~ ~ {Item:{id:"minecraft:iron_nugget", count: 1}, Tags:["ss_recipesRecentlyCrushMade"]} 

execute as @n[type=item,dx=1,dy=1,dz=1, tag=!ss_recipesRecentlyCrushMade, tag=ss_nowCrushedChoral] run function ss_recipes:entities/item_frames/on_piston/check_for_recipes/reduce_item_entity_count_by_1
execute as @n[type=item,dx=1,dy=1,dz=1, tag=!ss_recipesRecentlyCrushMade, tag=ss_nowCrushedChoral] run tag @s remove ss_nowCrushedChoral

scoreboard players set #recipeWasUsed ss_gen 1
