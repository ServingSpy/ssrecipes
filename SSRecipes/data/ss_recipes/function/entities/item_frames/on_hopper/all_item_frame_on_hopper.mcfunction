
scoreboard players set #liquidType ss_gen 0
execute if block ~ ~1 ~ water[level=0] run scoreboard players set #liquidType ss_gen 1
execute if block ~ ~1 ~ water_cauldron run scoreboard players set #liquidType ss_gen 2
execute if block ~ ~1 ~ lava[level=0] run scoreboard players set #liquidType ss_gen 3
execute if block ~ ~1 ~ lava_cauldron run scoreboard players set #liquidType ss_gen 4
execute if score #liquidType ss_gen matches 0 run return fail

scoreboard players set #slotsFull ss_gen 0
execute store result score #slotsFull ss_gen run data get block ~ ~ ~ Items

scoreboard players set #hasSingularBucket ss_gen 0
execute store success score #hasSingularBucket ss_gen if data block ~ ~ ~ Items[{count:1,id:"minecraft:bucket"}]

#Expl: If there are 5 slots full and no single bucket slots, we must return a fail as there would be nowhere to put the bucket
execute if score #slotsFull ss_gen matches 5 if score #hasSingularBucket ss_gen matches 0 run return fail

#Expl: If there is a singular bucket, we can just replace that with the full bucket
execute if score #hasSingularBucket ss_gen matches 1 run return run function ss_recipes:entities/item_frames/on_hopper/has_one_count_bucket/replace_bucket/specify_liquid_for_lone_bucket_replace

#Expl: If there is not a singular bucket, then decrease a stack's count by 1 and put a full bucket in one of the empty slots
function ss_recipes:entities/item_frames/on_hopper/no_one_count_bucket/lower_bucket_count_by_1
execute if score #liquidType ss_gen matches 1..2 run function ss_recipes:entities/item_frames/on_hopper/no_one_count_bucket/insert_water
function ss_recipes:entities/item_frames/on_hopper/no_one_count_bucket/insert_lava

execute unless score #liquidType ss_gen matches 2 unless score #liquidType ss_gen matches 4 run return run setblock ~ ~1 ~ air
setblock ~ ~1 ~ cauldron
