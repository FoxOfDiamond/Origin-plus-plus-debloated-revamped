scoreboard players operation @s overhaul_timer = NINETALES_BREATH_DENSITY overhaul_constants
scoreboard players operation @s ninetales_breath_w = #1 overhaul_constants
execute store result storage ninetales_storage_temp range int 1 run scoreboard players get @s ninetales_breath_w
function overhaul:ninetales_functions/fire_breath_sub/armor_spawn_anchor with storage ninetales_storage_temp
