#Dev Note: I know I could optimize this by making bins and checking those, but I don't want to do that right now :)

execute if block ~ ~ ~ large_amethyst_bud run return run summon item ~ ~ ~ {Item:{id: "large_amethyst_bud", count: 1}}
execute if block ~ ~ ~ medium_amethyst_bud run return run summon item ~ ~ ~ {Item:{id: "medium_amethyst_bud", count: 1}}
execute if block ~ ~ ~ small_amethyst_bud run return run summon item ~ ~ ~ {Item:{id: "small_amethyst_bud", count: 1}}
execute if block ~ ~ ~ bee_nest run return run summon item ~ ~ ~ {Item:{id: "bee_nest", count: 1}}
execute if block ~ ~ ~ beehive run data modify storage ss:recipes beehiveData.bees set from block ~ ~ ~ bees
execute if block ~ ~ ~ beehive run summon item ~ ~ ~ {Item:{id: "beehive", count: 1}, Tags:["ss_recipesNowBeehiveItemEntity"]}
execute if block ~ ~ ~ beehive as @n[tag=ss_recipesNowBeehiveItemEntity] run return run function ss_recipes:entities/item_frames/on_dispenser/break/this_block/beehive/transfer_bee_data
execute if block ~ ~ ~ blue_ice run return run summon item ~ ~ ~ {Item:{id: "blue_ice", count: 1}}
execute if block ~ ~ ~ bookshelf run return run summon item ~ ~ ~ {Item:{id: "bookshelf", count: 1}}
execute if block ~ ~ ~ campfire run return run summon item ~ ~ ~ {Item:{id: "campfire", count: 1}}
execute if block ~ ~ ~ chiseled_bookshelf run return run summon item ~ ~ ~ {Item:{id: "chiseled_bookshelf", count: 1}}
execute if block ~ ~ ~ clay run return run summon item ~ ~ ~ {Item:{id: "clay", count: 1}}
execute if block ~ ~ ~ coal_ore run return run summon item ~ ~ ~ {Item:{id: "coal_ore", count: 1}}
execute if block ~ ~ ~ copper_ore run return run summon item ~ ~ ~ {Item:{id: "copper_ore", count: 1}}
# #coral blocks
execute if block ~ ~ ~ minecraft:tube_coral_block run return run summon item ~ ~ ~ {Item:{id: "minecraft:tube_coral_block", count: 1}}
execute if block ~ ~ ~ minecraft:brain_coral_block run return run summon item ~ ~ ~ {Item:{id: "minecraft:brain_coral_block", count: 1}}
execute if block ~ ~ ~ minecraft:bubble_coral_block run return run summon item ~ ~ ~ {Item:{id: "minecraft:bubble_coral_block", count: 1}}
execute if block ~ ~ ~ minecraft:fire_coral_block run return run summon item ~ ~ ~ {Item:{id: "minecraft:fire_coral_block", count: 1}}
execute if block ~ ~ ~ minecraft:horn_coral_block run return run summon item ~ ~ ~ {Item:{id: "minecraft:horn_coral_block", count: 1}}
# #coral blocks
execute if block ~ ~ ~ minecraft:tube_coral run return run summon item ~ ~ ~ {Item:{id: "minecraft:tube_coral", count: 1}}
execute if block ~ ~ ~ minecraft:brain_coral run return run summon item ~ ~ ~ {Item:{id: "minecraft:brain_coral", count: 1}}
execute if block ~ ~ ~ minecraft:bubble_coral run return run summon item ~ ~ ~ {Item:{id: "minecraft:bubble_coral", count: 1}}
execute if block ~ ~ ~ minecraft:fire_coral run return run summon item ~ ~ ~ {Item:{id: "minecraft:fire_coral", count: 1}}
execute if block ~ ~ ~ minecraft:horn_coral run return run summon item ~ ~ ~ {Item:{id: "minecraft:horn_coral", count: 1}}
# #coral fans
execute if block ~ ~ ~ minecraft:tube_coral_fan run return run summon item ~ ~ ~ {Item:{id: "minecraft:tube_coral_fan", count: 1}}
execute if block ~ ~ ~ minecraft:brain_coral_fan run return run summon item ~ ~ ~ {Item:{id: "minecraft:brain_coral_fan", count: 1}}
execute if block ~ ~ ~ minecraft:bubble_coral_fan run return run summon item ~ ~ ~ {Item:{id: "minecraft:bubble_coral_fan", count: 1}}
execute if block ~ ~ ~ minecraft:fire_coral_fan run return run summon item ~ ~ ~ {Item:{id: "minecraft:fire_coral_fan", count: 1}}
execute if block ~ ~ ~ minecraft:horn_coral_fan run return run summon item ~ ~ ~ {Item:{id: "minecraft:horn_coral_fan", count: 1}}

execute if block ~ ~ ~ decorated_pot run return run summon item ~ ~ ~ {Item:{id: "decorated_pot", count: 1}}
execute if block ~ ~ ~ deepslate run return run summon item ~ ~ ~ {Item:{id: "deepslate", count: 1}}
execute if block ~ ~ ~ diamond_ore run return run summon item ~ ~ ~ {Item:{id: "diamond_ore", count: 1}}
execute if block ~ ~ ~ emerald_ore run return run summon item ~ ~ ~ {Item:{id: "emerald_ore", count: 1}}
execute if block ~ ~ ~ ender_chest run return run summon item ~ ~ ~ {Item:{id: "ender_chest", count: 1}}
execute if block ~ ~ ~ gilded_blackstone run return run summon item ~ ~ ~ {Item:{id: "gilded_blackstone", count: 1}}

# #glass_panes
execute if block ~ ~ ~ minecraft:white_stained_glass_pane run return run summon item ~ ~ ~ {Item:{id: "minecraft:white_stained_glass_pane", count: 1}}
execute if block ~ ~ ~ minecraft:orange_stained_glass_pane run return run summon item ~ ~ ~ {Item:{id: "minecraft:orange_stained_glass_pane", count: 1}}
execute if block ~ ~ ~ minecraft:magenta_stained_glass_pane run return run summon item ~ ~ ~ {Item:{id: "minecraft:magenta_stained_glass_pane", count: 1}}
execute if block ~ ~ ~ minecraft:light_blue_stained_glass_pane run return run summon item ~ ~ ~ {Item:{id: "minecraft:light_blue_stained_glass_pane", count: 1}}
execute if block ~ ~ ~ minecraft:yellow_stained_glass_pane run return run summon item ~ ~ ~ {Item:{id: "minecraft:yellow_stained_glass_pane", count: 1}}
execute if block ~ ~ ~ minecraft:lime_stained_glass_pane run return run summon item ~ ~ ~ {Item:{id: "minecraft:lime_stained_glass_pane", count: 1}}
execute if block ~ ~ ~ minecraft:pink_stained_glass_pane run return run summon item ~ ~ ~ {Item:{id: "minecraft:pink_stained_glass_pane", count: 1}}
execute if block ~ ~ ~ minecraft:gray_stained_glass_pane run return run summon item ~ ~ ~ {Item:{id: "minecraft:gray_stained_glass_pane", count: 1}}
execute if block ~ ~ ~ minecraft:light_gray_stained_glass_pane run return run summon item ~ ~ ~ {Item:{id: "minecraft:light_gray_stained_glass_pane", count: 1}}
execute if block ~ ~ ~ minecraft:cyan_stained_glass_pane run return run summon item ~ ~ ~ {Item:{id: "minecraft:cyan_stained_glass_pane", count: 1}}
execute if block ~ ~ ~ minecraft:purple_stained_glass_pane run return run summon item ~ ~ ~ {Item:{id: "minecraft:purple_stained_glass_pane", count: 1}}
execute if block ~ ~ ~ minecraft:blue_stained_glass_pane run return run summon item ~ ~ ~ {Item:{id: "minecraft:blue_stained_glass_pane", count: 1}}
execute if block ~ ~ ~ minecraft:brown_stained_glass_pane run return run summon item ~ ~ ~ {Item:{id: "minecraft:brown_stained_glass_pane", count: 1}}
execute if block ~ ~ ~ minecraft:green_stained_glass_pane run return run summon item ~ ~ ~ {Item:{id: "minecraft:green_stained_glass_pane", count: 1}}
execute if block ~ ~ ~ minecraft:red_stained_glass_pane run return run summon item ~ ~ ~ {Item:{id: "minecraft:red_stained_glass_pane", count: 1}}
execute if block ~ ~ ~ minecraft:black_stained_glass_pane run return run summon item ~ ~ ~ {Item:{id: "minecraft:black_stained_glass_pane", count: 1}}
execute if block ~ ~ ~ glass_pane run return run summon item ~ ~ ~ {Item:{id: "glass_pane", count: 1}}

# #glass_blocks
execute if block ~ ~ ~ minecraft:white_stained_glass run return run summon item ~ ~ ~ {Item:{id: "minecraft:white_stained_glass", count: 1}}
execute if block ~ ~ ~ minecraft:orange_stained_glass run return run summon item ~ ~ ~ {Item:{id: "minecraft:orange_stained_glass", count: 1}}
execute if block ~ ~ ~ minecraft:magenta_stained_glass run return run summon item ~ ~ ~ {Item:{id: "minecraft:magenta_stained_glass", count: 1}}
execute if block ~ ~ ~ minecraft:light_blue_stained_glass run return run summon item ~ ~ ~ {Item:{id: "minecraft:light_blue_stained_glass", count: 1}}
execute if block ~ ~ ~ minecraft:yellow_stained_glass run return run summon item ~ ~ ~ {Item:{id: "minecraft:yellow_stained_glass", count: 1}}
execute if block ~ ~ ~ minecraft:lime_stained_glass run return run summon item ~ ~ ~ {Item:{id: "minecraft:lime_stained_glass", count: 1}}
execute if block ~ ~ ~ minecraft:pink_stained_glass run return run summon item ~ ~ ~ {Item:{id: "minecraft:pink_stained_glass", count: 1}}
execute if block ~ ~ ~ minecraft:gray_stained_glass run return run summon item ~ ~ ~ {Item:{id: "minecraft:gray_stained_glass", count: 1}}
execute if block ~ ~ ~ minecraft:light_gray_stained_glass run return run summon item ~ ~ ~ {Item:{id: "minecraft:light_gray_stained_glass", count: 1}}
execute if block ~ ~ ~ minecraft:cyan_stained_glass run return run summon item ~ ~ ~ {Item:{id: "minecraft:cyan_stained_glass", count: 1}}
execute if block ~ ~ ~ minecraft:purple_stained_glass run return run summon item ~ ~ ~ {Item:{id: "minecraft:purple_stained_glass", count: 1}}
execute if block ~ ~ ~ minecraft:blue_stained_glass run return run summon item ~ ~ ~ {Item:{id: "minecraft:blue_stained_glass", count: 1}}
execute if block ~ ~ ~ minecraft:brown_stained_glass run return run summon item ~ ~ ~ {Item:{id: "minecraft:brown_stained_glass", count: 1}}
execute if block ~ ~ ~ minecraft:green_stained_glass run return run summon item ~ ~ ~ {Item:{id: "minecraft:green_stained_glass", count: 1}}
execute if block ~ ~ ~ minecraft:red_stained_glass run return run summon item ~ ~ ~ {Item:{id: "minecraft:red_stained_glass", count: 1}}
execute if block ~ ~ ~ minecraft:black_stained_glass run return run summon item ~ ~ ~ {Item:{id: "minecraft:black_stained_glass", count: 1}}
execute if block ~ ~ ~ glass run return run summon item ~ ~ ~ {Item:{id: "glass", count: 1}}

execute if block ~ ~ ~ glowstone run return run summon item ~ ~ ~ {Item:{id: "glowstone", count: 1}}
execute if block ~ ~ ~ grass_block run return run summon item ~ ~ ~ {Item:{id: "grass_block", count: 1}}
execute if block ~ ~ ~ dirt_path run return run summon item ~ ~ ~ {Item:{id: "dirt_path", count: 1}}
execute if block ~ ~ ~ gravel run return run summon item ~ ~ ~ {Item:{id: "gravel", count: 1}}
execute if block ~ ~ ~ ice run return run summon item ~ ~ ~ {Item:{id: "ice", count: 1}}

# #infested_blocks
execute if block ~ ~ ~ infested_chiseled_stone_bricks run return run summon item ~ ~ ~ {Item:{id: "minecraft:chiseled_stone_bricks", count: 1}}
execute if block ~ ~ ~ infested_cobblestone run return run summon item ~ ~ ~ {Item:{id: "minecraft:cobblestone", count: 1}}
execute if block ~ ~ ~ infested_cracked_stone_bricks run return run summon item ~ ~ ~ {Item:{id: "minecraft:cracked_stone_bricks", count: 1}}
execute if block ~ ~ ~ infested_deepslate run return run summon item ~ ~ ~ {Item:{id: "minecraft:deepslate", count: 1}}
execute if block ~ ~ ~ infested_mossy_stone_bricks run return run summon item ~ ~ ~ {Item:{id: "minecraft:mossy_stone_bricks", count: 1}}
execute if block ~ ~ ~ infested_stone run return run summon item ~ ~ ~ {Item:{id: "minecraft:stone", count: 1}}
execute if block ~ ~ ~ infested_stone_bricks run return run summon item ~ ~ ~ {Item:{id: "minecraft:stone_bricks", count: 1}}

execute if block ~ ~ ~ iron_ore run return run summon item ~ ~ ~ {Item:{id: "iron_ore", count: 1}}
execute if block ~ ~ ~ lapis_ore run return run summon item ~ ~ ~ {Item:{id: "lapis_ore", count: 1}}

# #leaves
execute if block ~ ~ ~ minecraft:jungle_leaves run return run summon item ~ ~ ~ {Item:{id: "minecraft:jungle_leaves", count: 1}}
execute if block ~ ~ ~ minecraft:oak_leaves run return run summon item ~ ~ ~ {Item:{id: "minecraft:oak_leaves", count: 1}}
execute if block ~ ~ ~ minecraft:spruce_leaves run return run summon item ~ ~ ~ {Item:{id: "minecraft:spruce_leaves", count: 1}}
execute if block ~ ~ ~ minecraft:dark_oak_leaves run return run summon item ~ ~ ~ {Item:{id: "minecraft:dark_oak_leaves", count: 1}}
execute if block ~ ~ ~ minecraft:acacia_leaves run return run summon item ~ ~ ~ {Item:{id: "minecraft:acacia_leaves", count: 1}}
execute if block ~ ~ ~ minecraft:birch_leaves run return run summon item ~ ~ ~ {Item:{id: "minecraft:birch_leaves", count: 1}}
execute if block ~ ~ ~ minecraft:azalea_leaves run return run summon item ~ ~ ~ {Item:{id: "minecraft:azalea_leaves", count: 1}}
execute if block ~ ~ ~ minecraft:flowering_azalea_leaves run return run summon item ~ ~ ~ {Item:{id: "minecraft:flowering_azalea_leaves", count: 1}}
execute if block ~ ~ ~ minecraft:mangrove_leaves run return run summon item ~ ~ ~ {Item:{id: "minecraft:mangrove_leaves", count: 1}}
execute if block ~ ~ ~ minecraft:cherry_leaves run return run summon item ~ ~ ~ {Item:{id: "minecraft:cherry_leaves", count: 1}}

execute if block ~ ~ ~ melon run return run summon item ~ ~ ~ {Item:{id: "melon", count: 1}}
execute if block ~ ~ ~ red_mushroom_block run return run summon item ~ ~ ~ {Item:{id: "red_mushroom_block", count: 1}}
execute if block ~ ~ ~ brown_mushroom_block run return run summon item ~ ~ ~ {Item:{id: "brown_mushroom_block", count: 1}}
execute if block ~ ~ ~ mycelium run return run summon item ~ ~ ~ {Item:{id: "mycelium", count: 1}}
execute if block ~ ~ ~ nether_gold_ore run return run summon item ~ ~ ~ {Item:{id: "nether_gold_ore", count: 1}}
execute if block ~ ~ ~ nether_quartz_ore run return run summon item ~ ~ ~ {Item:{id: "nether_quartz_ore", count: 1}}

# #nylium
execute if block ~ ~ ~ crimson_nylium run return run summon item ~ ~ ~ {Item:{id: "crimson_nylium", count: 1}}
execute if block ~ ~ ~ warped_nylium run return run summon item ~ ~ ~ {Item:{id: "warped_nylium", count: 1}}

execute if block ~ ~ ~ packed_ice run return run summon item ~ ~ ~ {Item:{id: "packed_ice", count: 1}}
execute if block ~ ~ ~ podzol run return run summon item ~ ~ ~ {Item:{id: "podzol", count: 1}}
execute if block ~ ~ ~ redstone_ore run return run summon item ~ ~ ~ {Item:{id: "redstone_ore", count: 1}}
execute if block ~ ~ ~ sculk run return run summon item ~ ~ ~ {Item:{id: "sculk", count: 1}}
execute if block ~ ~ ~ sculk_catalyst run return run summon item ~ ~ ~ {Item:{id: "sculk_catalyst", count: 1}}
execute if block ~ ~ ~ sculk_sensor run return run summon item ~ ~ ~ {Item:{id: "sculk_sensor", count: 1}}
execute if block ~ ~ ~ calibrated_sculk_sensor run return run summon item ~ ~ ~ {Item:{id: "calibrated_sculk_sensor", count: 1}}
execute if block ~ ~ ~ sculk_shrieker run return run summon item ~ ~ ~ {Item:{id: "sculk_shrieker", count: 1}}
execute if block ~ ~ ~ sculk_vein run return run summon item ~ ~ ~ {Item:{id: "sculk_vein", count: 1}}
execute if block ~ ~ ~ sea_lantern run return run summon item ~ ~ ~ {Item:{id: "sea_lantern", count: 1}}
execute if block ~ ~ ~ snow run return run summon item ~ ~ ~ {Item:{id: "snow", count: 1}}
execute if block ~ ~ ~ snow_block run return run summon item ~ ~ ~ {Item:{id: "snow_block", count: 1}}
execute if block ~ ~ ~ soul_campfire run return run summon item ~ ~ ~ {Item:{id: "soul_campfire", count: 1}}
execute if block ~ ~ ~ stone run return run summon item ~ ~ ~ {Item:{id: "stone", count: 1}}
execute if block ~ ~ ~ turtle_egg run return run summon item ~ ~ ~ {Item:{id: "turtle_egg", count: 1}}
execute if block ~ ~ ~ twisting_vines run return run summon item ~ ~ ~ {Item:{id: "twisting_vines", count: 1}}
execute if block ~ ~ ~ weeping_vines run return run summon item ~ ~ ~ {Item:{id: "weeping_vines", count: 1}}

fill ~ ~ ~ ~ ~ ~ air destroy