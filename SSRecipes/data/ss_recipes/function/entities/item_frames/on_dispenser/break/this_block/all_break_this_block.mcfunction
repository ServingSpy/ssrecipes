execute if data entity @s Item.components."minecraft:enchantments".levels."minecraft:silk_touch" if block ~ ~ ~ #ss_recipes:dispenser_silk_touched run return run function ss_recipes:entities/item_frames/on_dispenser/break/this_block/all_break_this_block_silk_touch

execute if block ~ ~ ~ snow run summon item ~ ~ ~ {Item:{id:"snowball", count: 1}}

fill ~ ~ ~ ~ ~ ~ air destroy