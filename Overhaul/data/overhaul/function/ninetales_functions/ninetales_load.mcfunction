scoreboard objectives add ninetales_breath_x dummy
scoreboard objectives add ninetales_breath_y dummy
scoreboard objectives add ninetales_breath_z dummy

scoreboard objectives add ninetales_breath_dx dummy
scoreboard objectives add ninetales_breath_dy dummy
scoreboard objectives add ninetales_breath_dz dummy

scoreboard objectives add ninetales_breath_w dummy

scoreboard players set NINETALES_BREATH_RANGE overhaul_constants 10
scoreboard players set NINETALES_BREATH_RADIUS overhaul_constants 5
scoreboard players set NINETALES_BREATH_STEP overhaul_constants 1
scoreboard players set NINETALES_BREATH_DENSITY overhaul_constants 5
scoreboard players set NINETALES_BREATH_PRECISION overhaul_constants 1000

scoreboard players operation NINETALES_BREATH_RADIUS overhaul_constants *= NINETALES_BREATH_PRECISION overhaul_constants
scoreboard players operation NINETALES_BREATH_RADIUS overhaul_constants *= #100 overhaul_constants
scoreboard players operation NINETALES_BREATH_RADIUS overhaul_constants /= #sqrt2x100 overhaul_constants
execute store result storage ninetales_storage_temp precision int 1 run scoreboard players get NINETALES_BREATH_PRECISION overhaul_constants
execute store result storage ninetales_storage_temp radius int 1 run scoreboard players get NINETALES_BREATH_RADIUS overhaul_constants