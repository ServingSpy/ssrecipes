execute if block ~0 ~0 ~1 #coral_blocks run return run setblock ~ ~ ~ bubble_coral_wall_fan[facing=north]
execute if block ~-1 ~0 ~0 #coral_blocks run return run setblock ~ ~ ~ bubble_coral_wall_fan[facing=east]
execute if block ~0 ~0 ~-1 #coral_blocks run return run setblock ~ ~ ~ bubble_coral_wall_fan[facing=south]
execute if block ~1 ~0 ~0 #coral_blocks run return run setblock ~ ~ ~ bubble_coral_wall_fan[facing=west]
execute if block ~0 ~-1 ~0 #coral_blocks run return run setblock ~ ~ ~ bubble_coral_fan

return 0