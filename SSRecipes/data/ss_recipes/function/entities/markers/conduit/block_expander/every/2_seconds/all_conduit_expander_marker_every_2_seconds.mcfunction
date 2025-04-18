#Expl: If there is no mob to expand from, there is no need to run the rest of the checks and functions
execute unless entity @e[type=#ss_recipes:hostile_1_21, distance=2.5..8] run return fail

#Expl: Detect the 3 Rings for the conduit activation frame
#xy ring
execute unless block ~ ~2 ~ #ss_recipes:can_activate_conduit run return fail
execute unless block ~1 ~2 ~ #ss_recipes:can_activate_conduit run return fail
execute unless block ~2 ~2 ~ #ss_recipes:can_activate_conduit run return fail
execute unless block ~-1 ~2 ~ #ss_recipes:can_activate_conduit run return fail
execute unless block ~-2 ~2 ~ #ss_recipes:can_activate_conduit run return fail

execute unless block ~ ~-2 ~ #ss_recipes:can_activate_conduit run return fail
execute unless block ~1 ~-2 ~ #ss_recipes:can_activate_conduit run return fail
execute unless block ~2 ~-2 ~ #ss_recipes:can_activate_conduit run return fail
execute unless block ~-1 ~-2 ~ #ss_recipes:can_activate_conduit run return fail
execute unless block ~-2 ~-2 ~ #ss_recipes:can_activate_conduit run return fail

execute unless block ~2 ~1 ~ #ss_recipes:can_activate_conduit run return fail
execute unless block ~-2 ~1 ~ #ss_recipes:can_activate_conduit run return fail

execute unless block ~2 ~ ~ #ss_recipes:can_activate_conduit run return fail
execute unless block ~-2 ~ ~ #ss_recipes:can_activate_conduit run return fail

execute unless block ~2 ~-1 ~ #ss_recipes:can_activate_conduit run return fail
execute unless block ~-2 ~-1 ~ #ss_recipes:can_activate_conduit run return fail

#xz ring
execute unless block ~ ~ ~2 #ss_recipes:can_activate_conduit run return fail
execute unless block ~1 ~ ~2 #ss_recipes:can_activate_conduit run return fail
execute unless block ~2 ~ ~2 #ss_recipes:can_activate_conduit run return fail
execute unless block ~-1 ~ ~2 #ss_recipes:can_activate_conduit run return fail
execute unless block ~-2 ~ ~2 #ss_recipes:can_activate_conduit run return fail

execute unless block ~ ~ ~-2 #ss_recipes:can_activate_conduit run return fail
execute unless block ~1 ~ ~-2 #ss_recipes:can_activate_conduit run return fail
execute unless block ~2 ~ ~-2 #ss_recipes:can_activate_conduit run return fail
execute unless block ~-1 ~ ~-2 #ss_recipes:can_activate_conduit run return fail
execute unless block ~-2 ~ ~-2 #ss_recipes:can_activate_conduit run return fail

execute unless block ~2 ~ ~1 #ss_recipes:can_activate_conduit run return fail
execute unless block ~-2 ~ ~1 #ss_recipes:can_activate_conduit run return fail

execute unless block ~2 ~ ~ #ss_recipes:can_activate_conduit run return fail
execute unless block ~-2 ~ ~ #ss_recipes:can_activate_conduit run return fail

execute unless block ~2 ~ ~-1 #ss_recipes:can_activate_conduit run return fail
execute unless block ~-2 ~ ~-1 #ss_recipes:can_activate_conduit run return fail

#yz ring
execute unless block ~ ~ ~2 #ss_recipes:can_activate_conduit run return fail
execute unless block ~ ~1 ~2 #ss_recipes:can_activate_conduit run return fail
execute unless block ~ ~2 ~2 #ss_recipes:can_activate_conduit run return fail
execute unless block ~ ~-1 ~2 #ss_recipes:can_activate_conduit run return fail
execute unless block ~ ~-2 ~2 #ss_recipes:can_activate_conduit run return fail

execute unless block ~ ~ ~-2 #ss_recipes:can_activate_conduit run return fail
execute unless block ~ ~1 ~-2 #ss_recipes:can_activate_conduit run return fail
execute unless block ~ ~2 ~-2 #ss_recipes:can_activate_conduit run return fail
execute unless block ~ ~-1 ~-2 #ss_recipes:can_activate_conduit run return fail
execute unless block ~ ~-2 ~-2 #ss_recipes:can_activate_conduit run return fail

execute unless block ~ ~2 ~1 #ss_recipes:can_activate_conduit run return fail
execute unless block ~ ~-2 ~1 #ss_recipes:can_activate_conduit run return fail

execute unless block ~ ~2 ~ #ss_recipes:can_activate_conduit run return fail
execute unless block ~ ~-2 ~ #ss_recipes:can_activate_conduit run return fail

execute unless block ~ ~2 ~-1 #ss_recipes:can_activate_conduit run return fail
execute unless block ~ ~-2 ~-1 #ss_recipes:can_activate_conduit run return fail

#water
execute unless block ~-1 ~-1 ~-1 water run return fail
execute unless block ~-1 ~-1 ~0 water run return fail
execute unless block ~-1 ~-1 ~1 water run return fail
execute unless block ~-1 ~0 ~-1 water run return fail
execute unless block ~-1 ~0 ~0 water run return fail
execute unless block ~-1 ~0 ~1 water run return fail
execute unless block ~-1 ~1 ~-1 water run return fail
execute unless block ~-1 ~1 ~0 water run return fail
execute unless block ~-1 ~1 ~1 water run return fail

execute unless block ~0 ~-1 ~-1 water run return fail
execute unless block ~0 ~-1 ~0 water run return fail
execute unless block ~0 ~-1 ~1 water run return fail
execute unless block ~0 ~0 ~-1 water run return fail
execute unless block ~0 ~0 ~1 water run return fail
execute unless block ~0 ~1 ~-1 water run return fail
execute unless block ~0 ~1 ~0 water run return fail
execute unless block ~0 ~1 ~1 water run return fail

execute unless block ~1 ~-1 ~-1 water run return fail
execute unless block ~1 ~-1 ~0 water run return fail
execute unless block ~1 ~-1 ~1 water run return fail
execute unless block ~1 ~0 ~-1 water run return fail
execute unless block ~1 ~0 ~0 water run return fail
execute unless block ~1 ~0 ~1 water run return fail
execute unless block ~1 ~1 ~-1 water run return fail
execute unless block ~1 ~1 ~0 water run return fail
execute unless block ~1 ~1 ~1 water run return fail

#Expl: If the rings exist, then kill the first hostile mob within 2.5-8 blocks with <= 4 Health
    #And if said mob happened to be in water, place coral there
    #2.5 minimum is to get out of the conduit structure and 8 max is vanilla behavior for how far conduits damage mobs
scoreboard players set #expandKillHasBeenDone ss_gen 0
execute as @e[type=#ss_recipes:hostile_1_21, distance=2.5..8] at @s run function ss_recipes:entities/markers/conduit/block_expander/expansion_kill/check_conditions