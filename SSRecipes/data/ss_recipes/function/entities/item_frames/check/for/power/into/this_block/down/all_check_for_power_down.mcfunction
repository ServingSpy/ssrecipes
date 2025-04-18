#Dev Note: Comparators, and repeaters don't power from below


#Dev Note: I did not check for all possible blocks that cannot be powered for the tag below. 
    #There may be some efficiency to gain from doing so
execute if block ~ ~ ~ #ss_recipes:unpowerable_block run return 0

execute if block ~ ~ ~ #ss_recipes:definitely_powering_block run return 1
execute if block ~ ~ ~ redstone_torch run return 1

execute if block ~ ~ ~ #ss_recipes:non_directional_level_power_blocks unless block ~ ~ ~ #ss_recipes:non_directional_level_power_blocks[power=0] run return 1
execute if block ~ ~ ~ redstone_wire unless block ~ ~ ~ redstone_wire[power=0] run return 1

execute if block ~ ~ ~ #ss_recipes:powered_is_boolean_and_non_directional[powered=true] run return 1
execute if block ~ ~ ~ observer[powered=true,facing=down] run return 1

return 0