scoreboard players set #liquidType ss_gen 0

execute positioned ~ ~ ~1 if block ~ ~ ~ water run scoreboard players set #liquidType ss_gen 1
execute positioned ~ ~ ~-1 if block ~ ~ ~ water run scoreboard players set #liquidType ss_gen 1
execute positioned ~1 ~ ~ if block ~ ~ ~ water run scoreboard players set #liquidType ss_gen 1
execute positioned ~-1 ~ ~ if block ~ ~ ~ water run scoreboard players set #liquidType ss_gen 1
execute if score #liquidType ss_gen matches 1 run function ss_recipes:entities/item_frames/on_piston/check_for_recipes/water_recipes/all_water_recipes

execute positioned ~ ~ ~1 if block ~ ~ ~ lava run scoreboard players set #liquidType ss_gen 2
execute positioned ~ ~ ~-1 if block ~ ~ ~ lava run scoreboard players set #liquidType ss_gen 2
execute positioned ~1 ~ ~ if block ~ ~ ~ lava run scoreboard players set #liquidType ss_gen 2
execute positioned ~-1 ~ ~ if block ~ ~ ~ lava run scoreboard players set #liquidType ss_gen 2
execute positioned ~1 ~ ~1 if block ~ ~ ~ lava run scoreboard players set #liquidType ss_gen 2
execute positioned ~-1 ~ ~-1 if block ~ ~ ~ lava run scoreboard players set #liquidType ss_gen 2
execute positioned ~1 ~ ~-1 if block ~ ~ ~ lava run scoreboard players set #liquidType ss_gen 2
execute positioned ~-1 ~ ~1 if block ~ ~ ~ lava run scoreboard players set #liquidType ss_gen 2
execute if score #liquidType ss_gen matches 2 run function ss_recipes:entities/item_frames/on_piston/check_for_recipes/lava_recipes/all_lava_recipes

execute as @e[type=item] run tag @s remove ss_recipesRecentlyCrushMade
