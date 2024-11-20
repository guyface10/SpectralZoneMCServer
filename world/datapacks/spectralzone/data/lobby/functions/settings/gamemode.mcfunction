scoreboard players add gamemode settings 1
execute unless score gamemode settings matches 1..3 run scoreboard players set gamemode settings 1

execute if score gamemode settings matches 1 run team join players @a[team=!spectators]
execute if score gamemode settings matches 2 as @a[team=!spectators,team=!red,team=!blue,sort=random] run function lobby:randomize_teams
execute if score gamemode settings matches 3 run team join players @a[team=!spectators]

execute if score gamemode settings matches 1 run setblock 0 44 12 blue_glazed_terracotta[facing=west]
execute if score gamemode settings matches 2 run setblock 0 44 12 red_glazed_terracotta[facing=west]
execute if score gamemode settings matches 3 run setblock 0 44 12 purple_glazed_terracotta[facing=west]

execute if score gamemode settings matches 1 run title @a actionbar {"text":"The gamemode was set to FFA"}
execute if score gamemode settings matches 2 run title @a actionbar {"text":"The gamemode was set to TDM"}
execute if score gamemode settings matches 3 run title @a actionbar {"text":"The gamemode was set to GH"}

execute if score info1 settings matches 1 unless score gamemode settings matches 3 run setblock 0 44 5 light_blue_glazed_terracotta[facing=west]
execute if score info1 settings matches 1 if score gamemode settings matches 3 run setblock 0 44 5 gray_glazed_terracotta[facing=west]



execute store result score players gameData if entity @a[team=!spectators]
execute unless score gamemode settings matches 3 if score players gameData matches 1..3 run setblock 0 44 8 blue_stained_glass
execute unless score gamemode settings matches 3 if score players gameData matches 4..7 run setblock 0 44 8 pink_stained_glass
execute unless score gamemode settings matches 3 if score players gameData matches 8.. run setblock 0 44 8 red_stained_glass
execute if score gamemode settings matches 3 if score players gameData matches 1..3 run setblock 0 44 8 cyan_stained_glass
execute if score gamemode settings matches 3 if score players gameData matches 4..7 run setblock 0 44 8 light_gray_stained_glass
execute if score gamemode settings matches 3 if score players gameData matches 8.. run setblock 0 44 8 gray_stained_glass



kill @e[type=item_frame,tag=team_select]
fill 16 41 3 18 41 13 air


execute if score gamemode settings matches 1 run clone 21 4 21 23 4 23 16 41 5
execute if score gamemode settings matches 1 run summon item_frame 17 42 6 {Tags:["team_select"],Facing:1b,Invulnerable:1b,ItemRotation:2b,Silent:1b,Item:{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:4}}}

execute if score gamemode settings matches 1 run clone 21 4 21 23 4 23 16 41 9
execute if score gamemode settings matches 1 run summon item_frame 17 42 10 {Tags:["team_select"],Facing:1b,Invulnerable:1b,ItemRotation:2b,Silent:1b,Item:{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:3}}}


execute if score gamemode settings matches 2 run clone 21 4 21 23 4 23 16 41 3
execute if score gamemode settings matches 2 run summon item_frame 17 42 4 {Tags:["team_select"],Facing:1b,Invulnerable:1b,ItemRotation:2b,Silent:1b,Item:{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:2}}}

execute if score gamemode settings matches 2 run clone 21 4 21 23 4 23 16 41 7
execute if score gamemode settings matches 2 run summon item_frame 17 42 8 {Tags:["team_select"],Facing:1b,Invulnerable:1b,ItemRotation:2b,Silent:1b,Item:{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:3}}}

execute if score gamemode settings matches 2 run clone 21 4 21 23 4 23 16 41 11
execute if score gamemode settings matches 2 run summon item_frame 17 42 12 {Tags:["team_select"],Facing:1b,Invulnerable:1b,ItemRotation:2b,Silent:1b,Item:{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:1}}}


execute if score gamemode settings matches 3 run clone 21 4 21 23 4 23 16 41 5
execute if score gamemode settings matches 3 run summon item_frame 17 42 6 {Tags:["team_select"],Facing:1b,Invulnerable:1b,ItemRotation:2b,Silent:1b,Item:{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:4}}}

execute if score gamemode settings matches 3 run clone 21 4 21 23 4 23 16 41 9
execute if score gamemode settings matches 3 run summon item_frame 17 42 10 {Tags:["team_select"],Facing:1b,Invulnerable:1b,ItemRotation:2b,Silent:1b,Item:{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:3}}}

