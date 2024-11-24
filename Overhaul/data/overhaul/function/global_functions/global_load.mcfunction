say Loading...
scoreboard objectives add overhaul_uid dummy
scoreboard players reset @a overhaul_uid
scoreboard players set #overhaul_global_uid overhaul_uid 0

scoreboard objectives add overhaul_tail_x dummy
scoreboard objectives add overhaul_tail_y dummy
scoreboard objectives add overhaul_tail_z dummy

scoreboard objectives add overhaul_constants dummy
scoreboard objectives add overhaul_tail_timer dummy

scoreboard players set #overhaul_global_lerp overhaul_constants 80
scoreboard players set #overhaul_global_100 overhaul_constants 100
scoreboard players set #overhaul_global_-1 overhaul_constants -1
#(30%)

say Loaded!