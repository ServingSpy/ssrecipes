execute if entity @s[type=item_frame] positioned ~ ~-1 ~ if block ~ ~ ~ #ss_recipes:recipe_block run function ss_recipes:entities/item_frames/on_recipe_block/specify_which_recipe_block
#execute if entity @s[type=marker,tag=ss_recipesSoulCampfireFurnaceMarker] positioned ~ ~1 ~ if block ~ ~ ~ furnace run function ss_recipes:entities/markers/soul_campfire/furnace/all_soul_campfire_furnace_markers
#Dev Note: Should the transform be exclusive to lightning rods? Or should we just say any red sand?
    #Lightning rods do keep terrains and large builds from getting mixed up
    #But seeing little patches of redstone blocks is also cool
execute if entity @s[type=lightning_bolt] if block ~ ~-1 ~ lightning_rod positioned ~ ~-2 ~ run fill ~-1 ~ ~-1 ~1 ~ ~1 redstone_block replace red_sand