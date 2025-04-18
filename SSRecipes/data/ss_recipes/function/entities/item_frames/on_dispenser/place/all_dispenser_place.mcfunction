function ss_recipes:entities/item_frames/on_dispenser/place/setup_dynamic_place
execute if block ~ ~ ~ air positioned ~ ~-1 ~ if block ~ ~ ~ #ss_recipes:tillable run setblock ~ ~ ~ farmland