#Expl: Separate out by liquid
execute if score #liquidType ss_gen matches 1..2 run return run function ss_recipes:entities/item_frames/on_hopper/has_one_count_bucket/replace_bucket/replace_with_water
execute if score #liquidType ss_gen matches 3..4 run function ss_recipes:entities/item_frames/on_hopper/has_one_count_bucket/replace_bucket/replace_with_lava