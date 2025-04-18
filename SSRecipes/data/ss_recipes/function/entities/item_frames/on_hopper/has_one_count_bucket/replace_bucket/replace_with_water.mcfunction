execute if score #liquidType ss_gen matches 1 run setblock ~ ~1 ~ air
execute if score #liquidType ss_gen matches 2 run setblock ~ ~1 ~ cauldron

execute if data block ~ ~ ~ Items[{Slot:0b, count:1, id:"minecraft:bucket"}] run return run item replace block ~ ~ ~ container.0 with water_bucket
execute if data block ~ ~ ~ Items[{Slot:1b, count:1, id:"minecraft:bucket"}] run return run item replace block ~ ~ ~ container.1 with water_bucket
execute if data block ~ ~ ~ Items[{Slot:2b, count:1, id:"minecraft:bucket"}] run return run item replace block ~ ~ ~ container.2 with water_bucket
execute if data block ~ ~ ~ Items[{Slot:3b, count:1, id:"minecraft:bucket"}] run return run item replace block ~ ~ ~ container.3 with water_bucket
execute if data block ~ ~ ~ Items[{Slot:4b, count:1, id:"minecraft:bucket"}] run return run item replace block ~ ~ ~ container.4 with water_bucket