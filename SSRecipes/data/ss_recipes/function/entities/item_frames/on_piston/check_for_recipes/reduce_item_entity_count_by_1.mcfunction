scoreboard players set #itemCount ss_gen 0
execute store result score #itemCount ss_gen run data get entity @s Item.count
execute if score #itemCount ss_gen matches 1 run return run kill @s
execute store result entity @s Item.count int 1 run scoreboard players remove #itemCount ss_gen 1