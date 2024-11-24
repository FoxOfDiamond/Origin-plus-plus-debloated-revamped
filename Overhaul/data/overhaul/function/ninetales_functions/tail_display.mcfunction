#execute store result score @s overhaul_tail_x run data get entity @s Pos[0] 100
#execute store result score @s overhaul_tail_y run data get entity @s Pos[1] 100
#execute store result score @s overhaul_tail_z run data get entity @s Pos[2] 100

#scoreboard players operation @s overhaul_tail_x -= @a[tag=tail_player,limit=1] overhaul_tail_x
#scoreboard players operation @s overhaul_tail_y -= @a[tag=tail_player,limit=1] overhaul_tail_y
#scoreboard players operation @s overhaul_tail_z -= @a[tag=tail_player,limit=1] overhaul_tail_z

#scoreboard players operation @s overhaul_tail_x *= #overhaul_global_-1 overhaul_constants
#scoreboard players operation @s overhaul_tail_y *= #overhaul_global_-1 overhaul_constants
#scoreboard players operation @s overhaul_tail_z *= #overhaul_global_-1 overhaul_constants

#scoreboard players add @s overhaul_tail_y 100
#execute store result entity @s transformation.translation[0] float 0.01 run scoreboard players get @s overhaul_tail_x
#execute store result entity @s transformation.translation[1] float 0.01 run scoreboard players get @s overhaul_tail_y
#execute store result entity @s transformation.translation[2] float 0.01 run scoreboard players get @s overhaul_tail_z
#
#data merge entity @s {start_interpolation:0,interpolation_duration:2}
execute at @a[tag=tail_player] run tp @s ~ ~ ~ facing entity @e[tag=tail_armorstand,limit=1]