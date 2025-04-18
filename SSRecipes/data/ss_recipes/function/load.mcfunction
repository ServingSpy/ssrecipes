say SSRecipes Loaded!

scoreboard objectives add ss_ticksOfContinuousWork dummy
scoreboard objectives add ss_wasExtendedLastTime dummy

schedule clear ss_recipes:recur/ticks/2/all_recur_every_2_ticks
schedule function ss_recipes:recur/ticks/2/all_recur_every_2_ticks 2t

schedule clear ss_recipes:recur/seconds/2/all_recur_every_2_seconds
schedule function ss_recipes:recur/seconds/2/all_recur_every_2_seconds 2s

schedule clear ss_recipes:recur/days/2/all_recur_every_2_days
schedule function ss_recipes:recur/days/2/all_recur_every_2_days 2d

forceload add 18539155 18539155
execute positioned 18539155 0 18539155 unless block ~ ~ ~ chest run setblock ~ ~ ~ chest
#A scoreboard for general use cases
scoreboard objectives add ss_gen dummy
