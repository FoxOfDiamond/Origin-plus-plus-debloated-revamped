execute store result score #OVERHAUL_RANDOM_RESULT overhaul_constants run random roll 1..7

execute if score #OVERHAUL_RANDOM_RESULT overhaul_constants matches 1..2 run summon mooshroom
execute if score #OVERHAUL_RANDOM_RESULT overhaul_constants matches 3..4 run summon panda ~ ~ ~ {MainGene:brown,HiddenGene:brown}
execute if score #OVERHAUL_RANDOM_RESULT overhaul_constants matches 5..6 run summon goat ~ ~ ~ {IsScreamingGoat:1b}
execute if score #OVERHAUL_RANDOM_RESULT overhaul_constants matches 7 run summon villager ~ ~ ~ {VillagerData:{profession:cleric,level:5,type:snow},PersistenceRequired:1b,CustomName:"Alchemist",active_effects:[{id:infested,amplifier:0,duration:999999,show_particles:0b}],Offers:{Recipes:[{buy:{id:emerald_block,count:2},buyB:{id:charcoal,count:64},sell:{id:diamond,count:1},xp:1,priceMultiplier:0f,maxUses:99999}]}}

scoreboard players set #OVERHAUL_RANDOM_RESULT overhaul_constants 0