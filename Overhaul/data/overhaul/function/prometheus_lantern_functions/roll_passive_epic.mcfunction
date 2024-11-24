execute store result score #OVERHAUL_RANDOM_RESULT overhaul_constants run random roll 1..13

execute if score #OVERHAUL_RANDOM_RESULT overhaul_constants matches 1..4 run summon allay
execute if score #OVERHAUL_RANDOM_RESULT overhaul_constants matches 5..9 run summon skeleton_horse ~ ~ ~ {Tame:1b}
execute if score #OVERHAUL_RANDOM_RESULT overhaul_constants matches 10 run summon skeleton_horse ~ ~ ~ {SkeletonTrap:1b}
execute if score #OVERHAUL_RANDOM_RESULT overhaul_constants matches 11..13 run summon zombie_horse ~ ~ ~ {Tame:1b}

scoreboard players set #OVERHAUL_RANDOM_RESULT overhaul_constants 0
