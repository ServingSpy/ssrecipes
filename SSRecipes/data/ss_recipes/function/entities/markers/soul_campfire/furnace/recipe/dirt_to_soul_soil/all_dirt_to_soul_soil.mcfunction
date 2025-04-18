summon item ~ ~ ~ {Item:{id:soul_soil, count:1}, Tags:["ss_nowSoulCampfireFurnaceOutputItem"]}
execute as @n[type=item,tag=ss_nowSoulCampfireFurnaceOutputItem] run function ss_recipes:entities/markers/soul_campfire/furnace/recipe/item_mods
item replace block ~ ~ ~ container.2 with air