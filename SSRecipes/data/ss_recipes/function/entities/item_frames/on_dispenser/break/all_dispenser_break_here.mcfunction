#It took me about 1 minute 23 seconds = 1660 ticks to mine a hardness 55 block with a normal diamond pick = ~30 ticks per hardness
    #It'd say since its automated lets make it *1.5 and say 45 ticks per hardness
scoreboard players operation @s ss_ticksOfContinuousWork = #nextTickCount ss_gen
scoreboard players add @s ss_ticksOfContinuousWork 1

scoreboard players set #needed ss_ticksOfContinuousWork 0
execute if block ~ ~ ~ #ss_recipes:hardness/55 run scoreboard players set #needed ss_ticksOfContinuousWork 2475
execute if block ~ ~ ~ #ss_recipes:hardness/50 run scoreboard players set #needed ss_ticksOfContinuousWork 2250
execute if block ~ ~ ~ #ss_recipes:hardness/10_to_30 run scoreboard players set #needed ss_ticksOfContinuousWork 900
execute if block ~ ~ ~ #ss_recipes:hardness/1_to_5 run scoreboard players set #needed ss_ticksOfContinuousWork 112
execute if block ~ ~ ~ #ss_recipes:hardness/0_5_to_0_8 run scoreboard players set #needed ss_ticksOfContinuousWork 29

execute if score @s ss_ticksOfContinuousWork >= #needed ss_ticksOfContinuousWork run function ss_recipes:entities/item_frames/on_dispenser/break/this_block/all_break_this_block