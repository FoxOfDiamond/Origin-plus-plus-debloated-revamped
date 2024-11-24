summon minecraft:armor_stand ~ ~ ~ {Tags:["sponge"],NoGravity:1b,Invulnerable:1b,Invisible:1b}
summon minecraft:armor_stand ~1 ~ ~ {Tags:["sponge"],NoGravity:1b,Invulnerable:1b,Invisible:1b}
summon minecraft:armor_stand ~ ~ ~1 {Tags:["sponge"],NoGravity:1b,Invulnerable:1b,Invisible:1b}
summon minecraft:armor_stand ~-1 ~ ~ {Tags:["sponge"],NoGravity:1b,Invulnerable:1b,Invisible:1b}
summon minecraft:armor_stand ~ ~ ~-1 {Tags:["sponge"],NoGravity:1b,Invulnerable:1b,Invisible:1b}
summon minecraft:armor_stand ~1 ~ ~-1 {Tags:["sponge"],NoGravity:1b,Invulnerable:1b,Invisible:1b}
summon minecraft:armor_stand ~1 ~ ~1 {Tags:["sponge"],NoGravity:1b,Invulnerable:1b,Invisible:1b}
summon minecraft:armor_stand ~-1 ~ ~1 {Tags:["sponge"],NoGravity:1b,Invulnerable:1b,Invisible:1b}
summon minecraft:armor_stand ~-1 ~ ~-1 {Tags:["sponge"],NoGravity:1b,Invulnerable:1b,Invisible:1b}

summon minecraft:armor_stand ~ ~1 ~ {Tags:["sponge"],NoGravity:1b,Invulnerable:1b,Invisible:1b}
summon minecraft:armor_stand ~1 ~1 ~ {Tags:["sponge"],NoGravity:1b,Invulnerable:1b,Invisible:1b}
summon minecraft:armor_stand ~ ~1 ~1 {Tags:["sponge"],NoGravity:1b,Invulnerable:1b,Invisible:1b}
summon minecraft:armor_stand ~-1 ~1 ~ {Tags:["sponge"],NoGravity:1b,Invulnerable:1b,Invisible:1b}
summon minecraft:armor_stand ~ ~1 ~-1 {Tags:["sponge"],NoGravity:1b,Invulnerable:1b,Invisible:1b}
summon minecraft:armor_stand ~1 ~1 ~-1 {Tags:["sponge"],NoGravity:1b,Invulnerable:1b,Invisible:1b}
summon minecraft:armor_stand ~1 ~1 ~1 {Tags:["sponge"],NoGravity:1b,Invulnerable:1b,Invisible:1b}
summon minecraft:armor_stand ~-1 ~1 ~1 {Tags:["sponge"],NoGravity:1b,Invulnerable:1b,Invisible:1b}
summon minecraft:armor_stand ~-1 ~1 ~-1 {Tags:["sponge"],NoGravity:1b,Invulnerable:1b,Invisible:1b}

summon minecraft:armor_stand ~ ~-1 ~ {Tags:["sponge"],NoGravity:1b,Invulnerable:1b,Invisible:1b}
summon minecraft:armor_stand ~1 ~-1 ~ {Tags:["sponge"],NoGravity:1b,Invulnerable:1b,Invisible:1b}
summon minecraft:armor_stand ~ ~-1 ~1 {Tags:["sponge"],NoGravity:1b,Invulnerable:1b,Invisible:1b}
summon minecraft:armor_stand ~-1 ~-1 ~ {Tags:["sponge"],NoGravity:1b,Invulnerable:1b,Invisible:1b}
summon minecraft:armor_stand ~ ~-1 ~-1 {Tags:["sponge"],NoGravity:1b,Invulnerable:1b,Invisible:1b}
summon minecraft:armor_stand ~1 ~-1 ~-1 {Tags:["sponge"],NoGravity:1b,Invulnerable:1b,Invisible:1b}
summon minecraft:armor_stand ~1 ~-1 ~1 {Tags:["sponge"],NoGravity:1b,Invulnerable:1b,Invisible:1b}
summon minecraft:armor_stand ~-1 ~-1 ~1 {Tags:["sponge"],NoGravity:1b,Invulnerable:1b,Invisible:1b}
summon minecraft:armor_stand ~-1 ~-1 ~-1 {Tags:["sponge"],NoGravity:1b,Invulnerable:1b,Invisible:1b}

summon minecraft:armor_stand ~2 ~ ~ {Tags:["sponge"],NoGravity:1b,Invulnerable:1b,Invisible:1b}
summon minecraft:armor_stand ~ ~ ~2 {Tags:["sponge"],NoGravity:1b,Invulnerable:1b,Invisible:1b}
summon minecraft:armor_stand ~-2 ~ ~ {Tags:["sponge"],NoGravity:1b,Invulnerable:1b,Invisible:1b}
summon minecraft:armor_stand ~ ~ ~-2 {Tags:["sponge"],NoGravity:1b,Invulnerable:1b,Invisible:1b}
summon minecraft:armor_stand ~ ~2 ~ {Tags:["sponge"],NoGravity:1b,Invulnerable:1b,Invisible:1b}
summon minecraft:armor_stand ~ ~-2 ~ {Tags:["sponge"],NoGravity:1b,Invulnerable:1b,Invisible:1b}

execute as @e[tag=sponge] at @s run execute if block ~ ~ ~ water run tag @s add water
execute at @e[tag=water] run playsound minecraft:block.lava.extinguish block @a ~ ~ ~
execute at @e[tag=water] run particle minecraft:cloud ~ ~ ~ 0.3 0.3 0.3 0 15
execute at @e[tag=water] run setblock ~ ~ ~ air
kill @e[tag=sponge,type=minecraft:armor_stand]
