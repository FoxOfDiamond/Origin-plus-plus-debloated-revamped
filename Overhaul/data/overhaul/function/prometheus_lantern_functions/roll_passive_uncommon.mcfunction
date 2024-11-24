execute store result score #OVERHAUL_RANDOM_RESULT overhaul_constants run random roll 1..14

execute if score #OVERHAUL_RANDOM_RESULT overhaul_constants matches 1 run summon armadillo
execute if score #OVERHAUL_RANDOM_RESULT overhaul_constants matches 2 run summon axolotl
execute if score #OVERHAUL_RANDOM_RESULT overhaul_constants matches 3 run summon ocelot
execute if score #OVERHAUL_RANDOM_RESULT overhaul_constants matches 4 run summon frog
execute if score #OVERHAUL_RANDOM_RESULT overhaul_constants matches 5 run summon glow_squid
execute if score #OVERHAUL_RANDOM_RESULT overhaul_constants matches 6 run summon parrot
execute if score #OVERHAUL_RANDOM_RESULT overhaul_constants matches 7 run summon strider
execute if score #OVERHAUL_RANDOM_RESULT overhaul_constants matches 8 run summon tadpole
execute if score #OVERHAUL_RANDOM_RESULT overhaul_constants matches 9 run summon turtle
execute if score #OVERHAUL_RANDOM_RESULT overhaul_constants matches 10 run summon bee
execute if score #OVERHAUL_RANDOM_RESULT overhaul_constants matches 11 run summon goat ~ ~ ~ {IsScreamingGoat:0b}
execute if score #OVERHAUL_RANDOM_RESULT overhaul_constants matches 12 run summon dolphin
execute if score #OVERHAUL_RANDOM_RESULT overhaul_constants matches 13 run summon panda
execute if score #OVERHAUL_RANDOM_RESULT overhaul_constants matches 14 run summon polar_bear

scoreboard players set #OVERHAUL_RANDOM_RESULT overhaul_constants 0