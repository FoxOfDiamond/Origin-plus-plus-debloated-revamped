say Loading...
scoreboard objectives add overhaul_uid dummy
scoreboard players reset @a overhaul_uid
scoreboard players set #overhaul_global_uid overhaul_uid 0

scoreboard objectives add overhaul_constants dummy
scoreboard objectives add overhaul_timer dummy

scoreboard players set #sqrt2x100 overhaul_constants 141
scoreboard players set #100 overhaul_constants 100
scoreboard players set #2 overhaul_constants 2
scoreboard players set #1 overhaul_constants 1


function overhaul:ninetales_functions/ninetales_load
say Loaded!