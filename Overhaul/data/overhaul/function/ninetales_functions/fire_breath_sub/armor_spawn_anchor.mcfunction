scoreboard players operation @s ninetales_breath_w += NINETALES_BREATH_STEP overhaul_constants
$summon armor_stand ^ ^ ^$(range) {Tags:["ninetales_setup"],NoGravity:1b,Invisible:1b}
execute at @s as @e[tag=ninetales_setup] run scoreboard players operation @s overhaul_uid = @p overhaul_uid
scoreboard players set @e[tag=ninetales_setup] overhaul_timer 0
execute at @s as @e[tag=ninetales_setup] run function overhaul:ninetales_functions/fire_breath_sub/armor_random_normal with storage ninetales_storage_temp
execute at @e[tag=ninetales_setup] as @e[distance=..5] at @s unless score @s overhaul_uid = @e[tag=ninetales_setup,limit=1] overhaul_uid run damage @s 3 in_fire
kill @e[tag=ninetales_setup]
tag @e[tag=ninetales_setup] remove ninetales_setup
execute store result storage ninetales_storage_temp range int 1 run scoreboard players get @s ninetales_breath_w
execute if score @s ninetales_breath_w < NINETALES_BREATH_RANGE overhaul_constants run function overhaul:ninetales_functions/fire_breath_sub/armor_spawn_anchor with storage ninetales_storage_temp