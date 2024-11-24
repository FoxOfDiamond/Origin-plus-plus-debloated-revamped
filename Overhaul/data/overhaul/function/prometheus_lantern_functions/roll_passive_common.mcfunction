execute store result score #OVERHAUL_RANDOM_RESULT overhaul_constants run random roll 1..11

execute if score #OVERHAUL_RANDOM_RESULT overhaul_constants matches 1 run summon cow
execute if score #OVERHAUL_RANDOM_RESULT overhaul_constants matches 2 run summon pig
execute if score #OVERHAUL_RANDOM_RESULT overhaul_constants matches 3 run summon sheep
execute if score #OVERHAUL_RANDOM_RESULT overhaul_constants matches 4 run summon chicken
execute if score #OVERHAUL_RANDOM_RESULT overhaul_constants matches 5 run summon horse
execute if score #OVERHAUL_RANDOM_RESULT overhaul_constants matches 6 run summon donkey
execute if score #OVERHAUL_RANDOM_RESULT overhaul_constants matches 7 run summon tropical_fish
execute if score #OVERHAUL_RANDOM_RESULT overhaul_constants matches 8 run summon pufferfish
execute if score #OVERHAUL_RANDOM_RESULT overhaul_constants matches 9 run summon rabbit
execute if score #OVERHAUL_RANDOM_RESULT overhaul_constants matches 10 run summon squid
execute if score #OVERHAUL_RANDOM_RESULT overhaul_constants matches 11 run summon wolf

scoreboard players set #OVERHAUL_RANDOM_RESULT overhaul_constants 0