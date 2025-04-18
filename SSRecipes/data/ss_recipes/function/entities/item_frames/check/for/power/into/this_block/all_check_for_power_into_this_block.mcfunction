scoreboard players set #hasPower ss_gen 0
scoreboard players set #secondaryBlockHadPower ss_gen 0

execute positioned ~ ~-1 ~ if block ~ ~ ~ #ss_recipes:power_is_in_block_states store result score #hasPower ss_gen run function ss_recipes:entities/item_frames/check/for/power/into/this_block/down/all_check_for_power_down
execute unless score #hasPower ss_gen matches 0 run return 1
execute positioned ~ ~-1 ~ unless block ~ ~ ~ #ss_recipes:power_is_in_block_states unless score #checkingSecondaryBlockPower ss_gen matches 1 store result score #hasPower ss_gen run function ss_recipes:entities/item_frames/check/for/power/into/this_block/all_check_for_power_in_secondary_block
execute unless score #secondaryBlockHadPower ss_gen matches 0 run return 1
scoreboard players set #secondaryBlockHadPower ss_gen 0

execute positioned ~ ~1 ~ if block ~ ~ ~ #ss_recipes:power_is_in_block_states store result score #hasPower ss_gen run function ss_recipes:entities/item_frames/check/for/power/into/this_block/up/all_check_for_power_up
execute unless score #hasPower ss_gen matches 0 run return 1
execute positioned ~ ~1 ~ unless block ~ ~ ~ #ss_recipes:power_is_in_block_states unless score #checkingSecondaryBlockPower ss_gen matches 1 store result score #hasPower ss_gen run function ss_recipes:entities/item_frames/check/for/power/into/this_block/all_check_for_power_in_secondary_block
execute unless score #secondaryBlockHadPower ss_gen matches 0 run return 1
scoreboard players set #secondaryBlockHadPower ss_gen 0

execute positioned ~ ~ ~-1 if block ~ ~ ~ #ss_recipes:power_is_in_block_states store result score #hasPower ss_gen run function ss_recipes:entities/item_frames/check/for/power/into/this_block/north/all_check_for_power_north
execute unless score #hasPower ss_gen matches 0 run return 1
execute positioned ~ ~ ~-1 unless block ~ ~ ~ #ss_recipes:power_is_in_block_states unless score #checkingSecondaryBlockPower ss_gen matches 1 store result score #hasPower ss_gen run function ss_recipes:entities/item_frames/check/for/power/into/this_block/all_check_for_power_in_secondary_block
execute unless score #secondaryBlockHadPower ss_gen matches 0 run return 1
scoreboard players set #secondaryBlockHadPower ss_gen 0

execute positioned ~ ~ ~1 if block ~ ~ ~ #ss_recipes:power_is_in_block_states store result score #hasPower ss_gen run function ss_recipes:entities/item_frames/check/for/power/into/this_block/south/all_check_for_power_south
execute unless score #hasPower ss_gen matches 0 run return 1
execute positioned ~ ~ ~1 unless block ~ ~ ~ #ss_recipes:power_is_in_block_states unless score #checkingSecondaryBlockPower ss_gen matches 1 store result score #hasPower ss_gen run function ss_recipes:entities/item_frames/check/for/power/into/this_block/all_check_for_power_in_secondary_block
execute unless score #secondaryBlockHadPower ss_gen matches 0 run return 1
scoreboard players set #secondaryBlockHadPower ss_gen 0

execute positioned ~-1 ~ ~ if block ~ ~ ~ #ss_recipes:power_is_in_block_states store result score #hasPower ss_gen run function ss_recipes:entities/item_frames/check/for/power/into/this_block/west/all_check_for_power_west
execute unless score #hasPower ss_gen matches 0 run return 1
execute positioned ~-1 ~ ~ unless block ~ ~ ~ #ss_recipes:power_is_in_block_states unless score #checkingSecondaryBlockPower ss_gen matches 1 store result score #hasPower ss_gen run function ss_recipes:entities/item_frames/check/for/power/into/this_block/all_check_for_power_in_secondary_block
execute unless score #secondaryBlockHadPower ss_gen matches 0 run return 1
scoreboard players set #secondaryBlockHadPower ss_gen 0

execute positioned ~1 ~ ~ if block ~ ~ ~ #ss_recipes:power_is_in_block_states store result score #hasPower ss_gen run function ss_recipes:entities/item_frames/check/for/power/into/this_block/east/all_check_for_power_east
execute unless score #hasPower ss_gen matches 0 run return 1
execute positioned ~1 ~ ~ unless block ~ ~ ~ #ss_recipes:power_is_in_block_states unless score #checkingSecondaryBlockPower ss_gen matches 1 store result score #hasPower ss_gen run function ss_recipes:entities/item_frames/check/for/power/into/this_block/all_check_for_power_in_secondary_block
execute unless score #secondaryBlockHadPower ss_gen matches 0 run return 1
scoreboard players set #secondaryBlockHadPower ss_gen 0

return 0