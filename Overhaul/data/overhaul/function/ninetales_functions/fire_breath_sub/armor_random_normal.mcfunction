$execute store result score @s ninetales_breath_dx run random value 0..$(radius)    
$execute store result score @s ninetales_breath_dy run random value 0..$(radius) 
$execute store result score @s ninetales_breath_dz run random value 0..$(radius)

execute store result score @s ninetales_breath_x run data get storage ninetales_storage_temp radius
execute store result score @s ninetales_breath_y run data get storage ninetales_storage_temp radius
execute store result score @s ninetales_breath_z run data get storage ninetales_storage_temp radius

scoreboard players operation @s ninetales_breath_x /= #2 overhaul_constants
scoreboard players operation @s ninetales_breath_y /= #2 overhaul_constants
scoreboard players operation @s ninetales_breath_z /= #2 overhaul_constants

scoreboard players operation @s ninetales_breath_dx -= @s ninetales_breath_x
scoreboard players operation @s ninetales_breath_dy -= @s ninetales_breath_y
scoreboard players operation @s ninetales_breath_dz -= @s ninetales_breath_z

$execute store result score @s ninetales_breath_x run data get entity @s Pos[0] $(precision)
$execute store result score @s ninetales_breath_y run data get entity @s Pos[1] $(precision)
$execute store result score @s ninetales_breath_z run data get entity @s Pos[2] $(precision)

scoreboard players operation @s ninetales_breath_x += @s ninetales_breath_dx
scoreboard players operation @s ninetales_breath_y += @s ninetales_breath_dy
scoreboard players operation @s ninetales_breath_z += @s ninetales_breath_dz

$execute store result score @p ninetales_breath_x run data get entity @p Pos[0] $(precision)
$execute store result score @p ninetales_breath_y run data get entity @p Pos[1] $(precision)
$execute store result score @p ninetales_breath_z run data get entity @p Pos[2] $(precision)

scoreboard players operation @s ninetales_breath_x -= @p ninetales_breath_x
scoreboard players operation @s ninetales_breath_y -= @p ninetales_breath_y
scoreboard players operation @s ninetales_breath_z -= @p ninetales_breath_z

execute store result storage ninetales_storage_temp x double 0.001 run scoreboard players get @s ninetales_breath_x
execute store result storage ninetales_storage_temp y double 0.001 run scoreboard players get @s ninetales_breath_y
execute store result storage ninetales_storage_temp z double 0.001 run scoreboard players get @s ninetales_breath_z
execute as @p anchored eyes positioned ^ ^ ^ run function overhaul:ninetales_functions/fire_breath_sub/particle with storage ninetales_storage_temp

scoreboard players add @s overhaul_timer 1
execute if score @s overhaul_timer < NINETALES_BREATH_DENSITY overhaul_constants run function overhaul:ninetales_functions/fire_breath_sub/armor_random_normal with storage ninetales_storage_temp