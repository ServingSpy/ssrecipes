#Dev Note: If and unless order intentionally swapped here, prioritizing the condition most likely to fail in each case
execute unless block ~ ~1 ~ #ss_recipes:item_frame_survivable unless entity @s[tag=ss_recipesFixedRecIFrame] run function ss_recipes:entities/item_frames/on_recipe_block/protect_iframe/fix
execute if entity @s[tag=ss_recipesFixedRecIFrame] if block ~ ~1 ~ #ss_recipes:item_frame_survivable run function ss_recipes:entities/item_frames/on_recipe_block/protect_iframe/unfix

scoreboard players operation #noNewCrushing ss_gen = @s ss_wasExtendedLastTime
execute if block ~ ~ ~ #ss_recipes:pistons[extended=false] run scoreboard players set @s ss_wasExtendedLastTime 0
execute if block ~ ~ ~ #ss_recipes:pistons[extended=true] run scoreboard players set @s ss_wasExtendedLastTime 1

execute if score #noNewCrushing ss_gen matches 1 run return fail
execute if score @s ss_wasExtendedLastTime matches 0 run return fail

execute if block ~ ~ ~ #ss_recipes:pistons[facing=up] run scoreboard players set #pistonDirection ss_gen 1
execute if block ~ ~ ~ #ss_recipes:pistons[facing=down] run scoreboard players set #pistonDirection ss_gen 2
execute if block ~ ~ ~ #ss_recipes:pistons[facing=north] run scoreboard players set #pistonDirection ss_gen 3
execute if block ~ ~ ~ #ss_recipes:pistons[facing=east] run scoreboard players set #pistonDirection ss_gen 4
execute if block ~ ~ ~ #ss_recipes:pistons[facing=south] run scoreboard players set #pistonDirection ss_gen 5
execute if block ~ ~ ~ #ss_recipes:pistons[facing=west] run scoreboard players set #pistonDirection ss_gen 6

execute if score #pistonDirection ss_gen matches 1 positioned ~ ~2 ~ align xyz run function ss_recipes:entities/item_frames/on_piston/hit_block/all_upon_piston_hitting_block
execute if score #pistonDirection ss_gen matches 2 positioned ~ ~-2 ~ align xyz run function ss_recipes:entities/item_frames/on_piston/hit_block/all_upon_piston_hitting_block
execute if score #pistonDirection ss_gen matches 3 positioned ~ ~ ~-2 align xyz run function ss_recipes:entities/item_frames/on_piston/hit_block/all_upon_piston_hitting_block
execute if score #pistonDirection ss_gen matches 4 positioned ~2 ~ ~ align xyz run function ss_recipes:entities/item_frames/on_piston/hit_block/all_upon_piston_hitting_block
execute if score #pistonDirection ss_gen matches 5 positioned ~ ~ ~2 align xyz run function ss_recipes:entities/item_frames/on_piston/hit_block/all_upon_piston_hitting_block
execute if score #pistonDirection ss_gen matches 6 positioned ~-2 ~ ~ align xyz run function ss_recipes:entities/item_frames/on_piston/hit_block/all_upon_piston_hitting_block

execute if score #pistonDirection ss_gen matches 1 positioned ~ ~1 ~ align xyz if entity @n[type=item,dx=1,dy=1,dz=1] run function ss_recipes:entities/item_frames/on_piston/check_for_recipes/all_check_for_recipes
execute if score #pistonDirection ss_gen matches 2 positioned ~ ~-1 ~ align xyz if entity @n[type=item,dx=1,dy=1,dz=1] run function ss_recipes:entities/item_frames/on_piston/check_for_recipes/all_check_for_recipes
execute if score #pistonDirection ss_gen matches 3 positioned ~ ~ ~-1 align xyz if entity @n[type=item,dx=1,dy=1,dz=1] run function ss_recipes:entities/item_frames/on_piston/check_for_recipes/all_check_for_recipes
execute if score #pistonDirection ss_gen matches 4 positioned ~1 ~ ~ align xyz if entity @n[type=item,dx=1,dy=1,dz=1] run function ss_recipes:entities/item_frames/on_piston/check_for_recipes/all_check_for_recipes
execute if score #pistonDirection ss_gen matches 5 positioned ~ ~ ~1 align xyz if entity @n[type=item,dx=1,dy=1,dz=1] run function ss_recipes:entities/item_frames/on_piston/check_for_recipes/all_check_for_recipes
execute if score #pistonDirection ss_gen matches 6 positioned ~-1 ~ ~ align xyz if entity @n[type=item,dx=1,dy=1,dz=1] run function ss_recipes:entities/item_frames/on_piston/check_for_recipes/all_check_for_recipes