execute store result score #OVERHAUL_RANDOM_RESULT overhaul_constants run random roll 1..20

playsound minecraft:item.trident.thunder master @a
playsound entity.lightning_bolt.thunder master @a

execute if score #OVERHAUL_RANDOM_RESULT overhaul_constants matches 1..8 run function overhaul:prometheus_lantern_functions/roll_passive_common
execute if score #OVERHAUL_RANDOM_RESULT overhaul_constants matches 9..14 run function overhaul:prometheus_lantern_functions/roll_passive_uncommon
execute if score #OVERHAUL_RANDOM_RESULT overhaul_constants matches 15..17 run function overhaul:prometheus_lantern_functions/roll_passive_rare
execute if score #OVERHAUL_RANDOM_RESULT overhaul_constants matches 18..19 run function overhaul:prometheus_lantern_functions/roll_passive_epic
execute if score #OVERHAUL_RANDOM_RESULT overhaul_constants matches 20 run function overhaul:prometheus_lantern_functions/roll_passive_legendary
