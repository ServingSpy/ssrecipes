scoreboard players set #checkingSecondaryBlockPower ss_gen 1
execute store result score #secondaryBlockHadPower ss_gen run function ss_recipes:entities/item_frames/check/for/power/into/this_block/all_check_for_power_into_this_block
scoreboard players set #checkingSecondaryBlockPower ss_gen 0