execute if block ~ ~ ~-1 #ss_recipes:cocoa_beans_can_be_placed_on run return run data modify storage ss:recipes dispenser.place.id set value "minecraft:cocoa[facing=north]"
execute if block ~-1 ~ ~ #ss_recipes:cocoa_beans_can_be_placed_on run return run data modify storage ss:recipes dispenser.place.id set value "minecraft:cocoa[facing=west]"
execute if block ~ ~ ~1 #ss_recipes:cocoa_beans_can_be_placed_on run return run data modify storage ss:recipes dispenser.place.id set value "minecraft:cocoa[facing=south]"
execute if block ~1 ~ ~ #ss_recipes:cocoa_beans_can_be_placed_on run return run data modify storage ss:recipes dispenser.place.id set value "minecraft:cocoa[facing=east]"
return -1
