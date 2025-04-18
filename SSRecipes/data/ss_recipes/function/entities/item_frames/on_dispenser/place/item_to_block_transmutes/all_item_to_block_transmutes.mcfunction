#Expl: Wall or not blocks
#execute if items block ~ ~ ~ container.0 #banners run return run data modify storage ss:recipes dispenser.place.id set value ""
#execute if items block ~ ~ ~ container.0 torch run return run data modify storage ss:recipes dispenser.place.id set value ""
#execute if items block ~ ~ ~ container.0 redstone_torch run return run data modify storage ss:recipes dispenser.place.id set value ""
#execute if items block ~ ~ ~ container.0 soul_torch run return run data modify storage ss:recipes dispenser.place.id set value ""
#execute if items block ~ ~ ~ container.0 #signs run return run data modify storage ss:recipes dispenser.place.id set value ""
#execute if items block ~ ~ ~ container.0 #hanging_signs run return run data modify storage ss:recipes dispenser.place.id set value ""
#execute if items block ~ ~ ~ container.0 dragon_head run return run data modify storage ss:recipes dispenser.place.id set value ""
#execute if items block ~ ~ ~ container.0 piglin_head run return run data modify storage ss:recipes dispenser.place.id set value ""
#execute if items block ~ ~ ~ container.0 player_head run return run data modify storage ss:recipes dispenser.place.id set value ""
#execute if items block ~ ~ ~ container.0 zombie_head run return run data modify storage ss:recipes dispenser.place.id set value ""
#execute if items block ~ ~ ~ container.0 creeper_head run return run data modify storage ss:recipes dispenser.place.id set value ""

#Expl: Default waterlogged=true blocks
#Dev Question: I'm not actually sure what value data modify would return? (I'm relying on it being not 0)
    #Even if it was 0 that would just mean the rest of the function would run, but I'd rather be efficient if I can
scoreboard players set #foundTheBlock ss_gen 0
execute unless score #blockBeingPlacedInto ss_gen matches 1 store result score #foundTheBlock ss_gen run function ss_recipes:entities/item_frames/on_dispenser/place/item_to_block_transmutes/unwaterlog/all_specify_unwaterlogged
execute unless score #foundTheBlock ss_gen matches 0 run return 1

#Expl: Plants
execute if items block ~ ~ ~ container.0 torchflower_seeds run return run data modify storage ss:recipes dispenser.place.id set value "minecraft:torchflower_crop"
execute if items block ~ ~ ~ container.0 sweet_berries run return run data modify storage ss:recipes dispenser.place.id set value "minecraft:sweet_berry_bush"
execute if items block ~ ~ ~ container.0 pumpkin_seeds run return run data modify storage ss:recipes dispenser.place.id set value "minecraft:pumpkin_stem"
execute if items block ~ ~ ~ container.0 pitcher_pod run return run data modify storage ss:recipes dispenser.place.id set value "minecraft:pitcher_crop"
execute if items block ~ ~ ~ container.0 melon_seeds run return run data modify storage ss:recipes dispenser.place.id set value "minecraft:melon_stem"

execute if items block ~ ~ ~ container.0 wheat_seeds run return run data modify storage ss:recipes dispenser.place.id set value "minecraft:wheat"
execute if items block ~ ~ ~ container.0 potato run return run data modify storage ss:recipes dispenser.place.id set value "minecraft:potatoes"
execute if items block ~ ~ ~ container.0 carrot run return run data modify storage ss:recipes dispenser.place.id set value "minecraft:carrots"
execute if items block ~ ~ ~ container.0 beetroot_seeds run return run data modify storage ss:recipes dispenser.place.id set value "minecraft:beetroots"

#Expl: Buckets of stuff
execute if items block ~ ~ ~ container.0 powder_snow_bucket run return run data modify storage ss:recipes dispenser.place.id set value "minecraft:powder_snow"
execute if items block ~ ~ ~ container.0 lava_bucket run return run data modify storage ss:recipes dispenser.place.id set value "minecraft:lava"
execute if items block ~ ~ ~ container.0 water_bucket run return run data modify storage ss:recipes dispenser.place.id set value "minecraft:water"

#Expl: Misc
execute if items block ~ ~ ~ container.0 redstone run return run data modify storage ss:recipes dispenser.place.id set value "minecraft:redstone_wire"

#execute if items block ~ ~ ~ container.0 bamboo run return run data modify storage ss:recipes dispenser.place.id set value ""
#execute if items block ~ ~ ~ container.0 scaffolding run return run data modify storage ss:recipes dispenser.place.id set value ""
