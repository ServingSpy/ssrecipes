execute if score #liquidType ss_gen matches 3 run setblock ~ ~1 ~ air
execute if score #liquidType ss_gen matches 4 run setblock ~ ~1 ~ cauldron
execute if data block ~ ~ ~ Items[{Slot:0b, count:1, id:"minecraft:bucket"}] run return run item replace block ~ ~ ~ container.0 with lava_bucket
execute if data block ~ ~ ~ Items[{Slot:1b, count:1, id:"minecraft:bucket"}] run return run item replace block ~ ~ ~ container.1 with lava_bucket
execute if data block ~ ~ ~ Items[{Slot:2b, count:1, id:"minecraft:bucket"}] run return run item replace block ~ ~ ~ container.2 with lava_bucket
execute if data block ~ ~ ~ Items[{Slot:3b, count:1, id:"minecraft:bucket"}] run return run item replace block ~ ~ ~ container.3 with lava_bucket
execute if data block ~ ~ ~ Items[{Slot:4b, count:1, id:"minecraft:bucket"}] run return run item replace block ~ ~ ~ container.4 with lava_bucket