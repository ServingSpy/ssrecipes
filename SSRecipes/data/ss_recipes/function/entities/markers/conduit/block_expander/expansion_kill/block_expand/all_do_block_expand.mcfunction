scoreboard players set #typeOfBlockToSet ss_gen 0
execute store result score #typeOfBlockToSet ss_gen run random value 1..4

scoreboard players set #blockCloned ss_gen 0
execute if score #typeOfBlockToSet ss_gen matches 1..3 store result score #blockCloned ss_gen run function ss_recipes:entities/markers/conduit/block_expander/expansion_kill/block_expand/face_adjacents/clone_block
execute unless score #blockCloned ss_gen matches 0 run return 1

scoreboard players set #typeOfFan ss_gen 0
execute store result score #typeOfFan ss_gen run random value 1..5
execute if score #typeOfFan ss_gen matches 1 if score #typeOfBlockToSet ss_gen matches 4 store result score #blockCloned ss_gen run function ss_recipes:entities/markers/conduit/block_expander/expansion_kill/block_expand/face_adjacents/place_fan/brain_coral_fan
execute if score #typeOfFan ss_gen matches 2 if score #typeOfBlockToSet ss_gen matches 4 store result score #blockCloned ss_gen run function ss_recipes:entities/markers/conduit/block_expander/expansion_kill/block_expand/face_adjacents/place_fan/bubble_coral_fan
execute if score #typeOfFan ss_gen matches 3 if score #typeOfBlockToSet ss_gen matches 4 store result score #blockCloned ss_gen run function ss_recipes:entities/markers/conduit/block_expander/expansion_kill/block_expand/face_adjacents/place_fan/fire_coral_fan
execute if score #typeOfFan ss_gen matches 4 if score #typeOfBlockToSet ss_gen matches 4 store result score #blockCloned ss_gen run function ss_recipes:entities/markers/conduit/block_expander/expansion_kill/block_expand/face_adjacents/place_fan/horn_coral_fan
execute if score #typeOfFan ss_gen matches 5 if score #typeOfBlockToSet ss_gen matches 4 store result score #blockCloned ss_gen run function ss_recipes:entities/markers/conduit/block_expander/expansion_kill/block_expand/face_adjacents/place_fan/tube_coral_fan
execute unless score #blockCloned ss_gen matches 0 run return 1

#Expl: Only blocks directly up, down, or to the side can get fans, so the rest will just clone if a successful spot it found
execute if block ~-1 ~-1 ~-1 #ss_recipes:grows_from_conduit run return run clone ~-1 ~-1 ~-1 ~-1 ~-1 ~-1 ~ ~ ~
execute if block ~0 ~-1 ~-1 #ss_recipes:grows_from_conduit run return run clone ~0 ~-1 ~-1 ~0 ~-1 ~-1 ~ ~ ~
execute if block ~1 ~-1 ~-1 #ss_recipes:grows_from_conduit run return run clone ~1 ~-1 ~-1 ~1 ~-1 ~-1 ~ ~ ~
execute if block ~-1 ~0 ~-1 #ss_recipes:grows_from_conduit run return run clone ~-1 ~0 ~-1 ~-1 ~0 ~-1 ~ ~ ~
execute if block ~1 ~0 ~-1 #ss_recipes:grows_from_conduit run return run clone ~1 ~0 ~-1 ~1 ~0 ~-1 ~ ~ ~
execute if block ~-1 ~1 ~-1 #ss_recipes:grows_from_conduit run return run clone ~-1 ~1 ~-1 ~-1 ~1 ~-1 ~ ~ ~
execute if block ~0 ~1 ~-1 #ss_recipes:grows_from_conduit run return run clone ~0 ~1 ~-1 ~0 ~1 ~-1 ~ ~ ~
execute if block ~1 ~1 ~-1 #ss_recipes:grows_from_conduit run return run clone ~1 ~1 ~-1 ~1 ~1 ~-1 ~ ~ ~
execute if block ~-1 ~-1 ~0 #ss_recipes:grows_from_conduit run return run clone ~-1 ~-1 ~0 ~-1 ~-1 ~0 ~ ~ ~
execute if block ~1 ~-1 ~0 #ss_recipes:grows_from_conduit run return run clone ~1 ~-1 ~0 ~1 ~-1 ~0 ~ ~ ~
execute if block ~0 ~0 ~0 #ss_recipes:grows_from_conduit run return run clone ~0 ~0 ~0 ~0 ~0 ~0 ~ ~ ~
execute if block ~-1 ~1 ~0 #ss_recipes:grows_from_conduit run return run clone ~-1 ~1 ~0 ~-1 ~1 ~0 ~ ~ ~
execute if block ~1 ~1 ~0 #ss_recipes:grows_from_conduit run return run clone ~1 ~1 ~0 ~1 ~1 ~0 ~ ~ ~
execute if block ~-1 ~-1 ~1 #ss_recipes:grows_from_conduit run return run clone ~-1 ~-1 ~1 ~-1 ~-1 ~1 ~ ~ ~
execute if block ~0 ~-1 ~1 #ss_recipes:grows_from_conduit run return run clone ~0 ~-1 ~1 ~0 ~-1 ~1 ~ ~ ~
execute if block ~1 ~-1 ~1 #ss_recipes:grows_from_conduit run return run clone ~1 ~-1 ~1 ~1 ~-1 ~1 ~ ~ ~
execute if block ~-1 ~0 ~1 #ss_recipes:grows_from_conduit run return run clone ~-1 ~0 ~1 ~-1 ~0 ~1 ~ ~ ~
execute if block ~1 ~0 ~1 #ss_recipes:grows_from_conduit run return run clone ~1 ~0 ~1 ~1 ~0 ~1 ~ ~ ~
execute if block ~-1 ~1 ~1 #ss_recipes:grows_from_conduit run return run clone ~-1 ~1 ~1 ~-1 ~1 ~1 ~ ~ ~
execute if block ~0 ~1 ~1 #ss_recipes:grows_from_conduit run return run clone ~0 ~1 ~1 ~0 ~1 ~1 ~ ~ ~
execute if block ~1 ~1 ~1 #ss_recipes:grows_from_conduit run return run clone ~1 ~1 ~1 ~1 ~1 ~1 ~ ~ ~
