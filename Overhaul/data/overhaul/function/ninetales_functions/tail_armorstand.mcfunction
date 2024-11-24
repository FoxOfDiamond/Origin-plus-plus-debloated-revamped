execute store result score @s overhaul_tail_x run data get entity @s Pos[0] 100
execute store result score @s overhaul_tail_y run data get entity @s Pos[1] 100
execute store result score @s overhaul_tail_z run data get entity @s Pos[2] 100

scoreboard players operation @s overhaul_tail_x -= @a[tag=tail_player,limit=1] overhaul_tail_x
scoreboard players operation @s overhaul_tail_y -= @a[tag=tail_player,limit=1] overhaul_tail_y
scoreboard players operation @s overhaul_tail_z -= @a[tag=tail_player,limit=1] overhaul_tail_z

scoreboard players operation @s overhaul_tail_x *= #overhaul_global_lerp overhaul_constants
scoreboard players operation @s overhaul_tail_y *= #overhaul_global_lerp overhaul_constants
scoreboard players operation @s overhaul_tail_z *= #overhaul_global_lerp overhaul_constants

scoreboard players operation @s overhaul_tail_x /= #overhaul_global_100 overhaul_constants
scoreboard players operation @s overhaul_tail_y /= #overhaul_global_100 overhaul_constants
scoreboard players operation @s overhaul_tail_z /= #overhaul_global_100 overhaul_constants

scoreboard players operation @s overhaul_tail_x += @a[tag=tail_player,limit=1] overhaul_tail_x
scoreboard players operation @s overhaul_tail_y += @a[tag=tail_player,limit=1] overhaul_tail_y
scoreboard players operation @s overhaul_tail_z += @a[tag=tail_player,limit=1] overhaul_tail_z

execute store result entity @s Pos[0] double 0.01 run scoreboard players get @s overhaul_tail_x
execute store result entity @s Pos[1] double 0.01 run scoreboard players get @s overhaul_tail_y
execute store result entity @s Pos[2] double 0.01 run scoreboard players get @s overhaul_tail_z
