#Dev Note: We have water be one since that makes it easier to check other things as a group while excluding rhe scores\ that would require [waterlogged=true]
execute if block ~ ~ ~ water run scoreboard players set #blockBeingPlacedInto ss_gen 1
execute if block ~ ~ ~ air run scoreboard players set #blockBeingPlacedInto ss_gen 2
execute if block ~ ~ ~ lava run scoreboard players set #blockBeingPlacedInto ss_gen 3
execute if block ~ ~ ~ scaffolding run scoreboard players set #blockBeingPlacedInto ss_gen 4
execute if block ~ ~ ~ snow run scoreboard players set #blockBeingPlacedInto ss_gen 5



execute positioned ~ ~-1 ~ run function ss_recipes:entities/item_frames/on_dispenser/tool_on_block_mods/all_tool_on_block_mods
