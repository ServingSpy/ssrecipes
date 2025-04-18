#Dev Note: If and unless order intentionally swapped here, prioritizing the condition most likely to fail in each case
execute unless block ~ ~1 ~ #ss_recipes:item_frame_survivable unless entity @s[tag=ss_recipesFixedRecIFrame] run function ss_recipes:entities/item_frames/on_recipe_block/protect_iframe/fix
execute if entity @s[tag=ss_recipesFixedRecIFrame] if block ~ ~1 ~ #ss_recipes:item_frame_survivable run function ss_recipes:entities/item_frames/on_recipe_block/protect_iframe/unfix

scoreboard players operation #nextTickCount ss_gen = @s ss_ticksOfContinuousWork
scoreboard players set @s ss_ticksOfContinuousWork 0

scoreboard players set #thisBlockIsPowered ss_gen 0
execute store result score #thisBlockIsPowered ss_gen run function ss_recipes:entities/item_frames/check/for/power/into/this_block/all_check_for_power_into_this_block
execute if score #thisBlockIsPowered ss_gen matches 0 run return fail

execute if block ~ ~ ~ dispenser[facing=up] run scoreboard players set #dispenserDirection ss_gen 1
execute if block ~ ~ ~ dispenser[facing=down] run scoreboard players set #dispenserDirection ss_gen 2
execute if block ~ ~ ~ dispenser[facing=north] run scoreboard players set #dispenserDirection ss_gen 3
execute if block ~ ~ ~ dispenser[facing=east] run scoreboard players set #dispenserDirection ss_gen 4
execute if block ~ ~ ~ dispenser[facing=south] run scoreboard players set #dispenserDirection ss_gen 5
execute if block ~ ~ ~ dispenser[facing=west] run scoreboard players set #dispenserDirection ss_gen 6

execute if score #dispenserDirection ss_gen matches 1 positioned ~ ~1 ~ if block ~ ~ ~ air positioned ~ ~-1 ~ run function ss_recipes:entities/item_frames/on_dispenser/tool_on_block_mods/all_tool_on_block_mods
execute if score #dispenserDirection ss_gen matches 2 positioned ~ ~-1 ~ if block ~ ~ ~ air positioned ~ ~-1 ~ run function ss_recipes:entities/item_frames/on_dispenser/tool_on_block_mods/all_tool_on_block_mods
execute if score #dispenserDirection ss_gen matches 3 positioned ~ ~ ~-1 if block ~ ~ ~ air positioned ~ ~-1 ~ run function ss_recipes:entities/item_frames/on_dispenser/tool_on_block_mods/all_tool_on_block_mods
execute if score #dispenserDirection ss_gen matches 4 positioned ~1 ~ ~ if block ~ ~ ~ air positioned ~ ~-1 ~ run function ss_recipes:entities/item_frames/on_dispenser/tool_on_block_mods/all_tool_on_block_mods
execute if score #dispenserDirection ss_gen matches 5 positioned ~ ~ ~1 if block ~ ~ ~ air positioned ~ ~-1 ~ run function ss_recipes:entities/item_frames/on_dispenser/tool_on_block_mods/all_tool_on_block_mods
execute if score #dispenserDirection ss_gen matches 6 positioned ~-1 ~ ~ if block ~ ~ ~ air positioned ~ ~-1 ~ run function ss_recipes:entities/item_frames/on_dispenser/tool_on_block_mods/all_tool_on_block_mods

execute if score #dispenserDirection ss_gen matches 1 positioned ~ ~1 ~ if block ~ ~ ~ #ss_recipes:dispenser_unbreakable run return fail
execute if score #dispenserDirection ss_gen matches 2 positioned ~ ~-1 ~ if block ~ ~ ~ #ss_recipes:dispenser_unbreakable run return fail
execute if score #dispenserDirection ss_gen matches 3 positioned ~ ~ ~-1 if block ~ ~ ~ #ss_recipes:dispenser_unbreakable run return fail
execute if score #dispenserDirection ss_gen matches 4 positioned ~1 ~ ~ if block ~ ~ ~ #ss_recipes:dispenser_unbreakable run return fail
execute if score #dispenserDirection ss_gen matches 5 positioned ~ ~ ~1 if block ~ ~ ~ #ss_recipes:dispenser_unbreakable run return fail
execute if score #dispenserDirection ss_gen matches 6 positioned ~-1 ~ ~ if block ~ ~ ~ #ss_recipes:dispenser_unbreakable run return fail


execute if score #dispenserDirection ss_gen matches 1 positioned ~ ~1 ~ run function ss_recipes:entities/item_frames/on_dispenser/break/all_dispenser_break_here
execute if score #dispenserDirection ss_gen matches 2 positioned ~ ~-1 ~ run function ss_recipes:entities/item_frames/on_dispenser/break/all_dispenser_break_here
execute if score #dispenserDirection ss_gen matches 3 positioned ~ ~ ~-1 run function ss_recipes:entities/item_frames/on_dispenser/break/all_dispenser_break_here
execute if score #dispenserDirection ss_gen matches 4 positioned ~1 ~ ~ run function ss_recipes:entities/item_frames/on_dispenser/break/all_dispenser_break_here
execute if score #dispenserDirection ss_gen matches 5 positioned ~ ~ ~1 run function ss_recipes:entities/item_frames/on_dispenser/break/all_dispenser_break_here
execute if score #dispenserDirection ss_gen matches 6 positioned ~-1 ~ ~ run function ss_recipes:entities/item_frames/on_dispenser/break/all_dispenser_break_here
