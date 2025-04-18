execute unless score #expandKillHasBeenDone ss_gen matches 0 run return fail

scoreboard players set #thisMobsHealth ss_gen 0
execute store result score #thisMobsHealth ss_gen run data get entity @s Health

scoreboard players set #blockExpandLocation ss_gen 0
execute if block ~ ~ ~ water run scoreboard players set #blockExpandLocation ss_gen 1
execute if score #blockExpandLocation ss_gen matches 0 if block ~ ~1 ~ water run scoreboard players set #blockExpandLocation ss_gen 2


execute if score #thisMobsHealth ss_gen matches 0..4 if score #blockExpandLocation ss_gen matches 1 run function ss_recipes:entities/markers/conduit/block_expander/expansion_kill/all_do_expansion_kill
execute if score #thisMobsHealth ss_gen matches 0..4 if score #blockExpandLocation ss_gen matches 2 positioned ~ ~1 ~ run function ss_recipes:entities/markers/conduit/block_expander/expansion_kill/all_do_expansion_kill