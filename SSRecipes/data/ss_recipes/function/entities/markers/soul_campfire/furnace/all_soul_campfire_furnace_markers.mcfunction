execute unless items block ~ ~ ~ container.2 * run return fail

scoreboard players set #itemCountInOutputSlot ss_gen 0
execute store result score #itemCountInOutputSlot ss_gen if items block ~ ~ ~ container.2 *
execute if score #itemCountInOutputSlot ss_gen matches 0 run return fail

execute if items block ~ ~ ~ container.2 stone align xyz positioned ~.5 ~ ~.5 run function ss_recipes:entities/markers/soul_campfire/furnace/recipe/stone_to_blackstone/all_stone_to_blackstone

execute if items block ~ ~ ~ container.2 glass align xyz positioned ~.5 ~ ~.5 run function ss_recipes:entities/markers/soul_campfire/furnace/recipe/sand_to_soul_sand/all_sand_to_soul_sand

execute if items block ~ ~ ~ container.2 dirt align xyz positioned ~.5 ~ ~.5 run function ss_recipes:entities/markers/soul_campfire/furnace/recipe/dirt_to_soul_soil/all_dirt_to_soul_soil

#Dev Question: Should this be the way to obtain netherrack? Is there a way that is more fun or/and makes more sense?
execute if items block ~ ~ ~ container.2 smooth_basalt align xyz positioned ~.5 ~ ~.5 run function ss_recipes:entities/markers/soul_campfire/furnace/recipe/basalt_to_netherrack/all_besalt_to_netherrack

execute if items block ~ ~ ~ container.2 bricks align xyz positioned ~.5 ~ ~.5 run function ss_recipes:entities/markers/soul_campfire/furnace/recipe/bricks_to_nether_bricks/all_bricks_to_nether_bricks
