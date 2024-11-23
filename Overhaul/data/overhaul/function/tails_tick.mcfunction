tag @s add tail_player
execute at @s as @e[type=armor_stand] if score @s overhaul_uid = @a[tag=tail_player,limit=1] overhaul_uid run tag @s add tail_armorstand
execute at @s as @e[type=item_display] if score @s overhaul_uid = @a[tag=tail_player,limit=1] overhaul_uid run tag @s add tail_display
summon minecraft:armor_stand ~ ~ ~ {Tags:["target"],Invisible:1b}
execute as @e[tag=target] run data modify entity @s Rotation[0] set from entity @a[tag=tail_player,limit=1] Rotation[0]
execute at @s as @e[tag=target] run tp @s ~ ~ ~
execute as @e[tag=target] at @s run tp @s ^ ^3 ^-1
execute store result score @s overhaul_tail_x run data get entity @e[tag=target,limit=1] Pos[0] 100
execute store result score @s overhaul_tail_y run data get entity @e[tag=target,limit=1] Pos[1] 100
execute store result score @s overhaul_tail_z run data get entity @e[tag=target,limit=1] Pos[2] 100


execute as @e[tag=tail_armorstand] run function overhaul:tail_armorstand

execute store result score @s overhaul_tail_x run data get entity @s Pos[0] 100
execute store result score @s overhaul_tail_y run data get entity @s Pos[1] 100
execute store result score @s overhaul_tail_z run data get entity @s Pos[2] 100

execute as @e[tag=tail_display] run function overhaul:tail_display
execute if entity @s[scores={overhaul_tail_timer=5..}] run scoreboard players set @s overhaul_tail_timer 0
scoreboard players add @s overhaul_tail_timer 1
tag @e remove tail_armorstand
tag @e remove tail_display
tag @a remove tail_player
kill @e[tag=target]