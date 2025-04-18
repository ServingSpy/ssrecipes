#Dev Note: If and unless order intentionally swapped here, prioritizing the condition most likely to fail in each case
execute unless block ~ ~1 ~ #ss_recipes:item_frame_survivable unless entity @s[tag=ss_recipesFixedRecIFrame] run function ss_recipes:entities/item_frames/on_recipe_block/protect_iframe/fix
execute if entity @s[tag=ss_recipesFixedRecIFrame] if block ~ ~1 ~ #ss_recipes:item_frame_survivable run function ss_recipes:entities/item_frames/on_recipe_block/protect_iframe/unfix

execute if block ~ ~ ~ hopper[enabled=true] if items block ~ ~ ~ container.* bucket if block ~ ~1 ~ #ss_recipes:liquid run function ss_recipes:entities/item_frames/on_hopper/all_item_frame_on_hopper
