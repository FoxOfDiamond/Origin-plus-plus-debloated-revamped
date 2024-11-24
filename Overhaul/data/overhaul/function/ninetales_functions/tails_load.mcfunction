scoreboard players operation @s overhaul_uid = #overhaul_global_uid overhaul_uid
scoreboard players add #overhaul_global_uid overhaul_uid 1

execute at @s as @e[type=!player] if score @s overhaul_uid = @p overhaul_uid run kill @s

summon minecraft:armor_stand ~ ~ ~ {Tags:["setting"],NoGravity:1b}
summon minecraft:item_display ~ ~ ~ {Tags:["setting"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0.3f],scale:[1f,1f,1f]},item:{id:"minecraft:stick",count:1,components:{"minecraft:custom_model_data":1}}}

scoreboard players operation @e[tag=setting] overhaul_uid = @s overhaul_uid
tag @e[tag=setting] remove setting

