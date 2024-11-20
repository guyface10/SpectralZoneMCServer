scoreboard players add info1 settings 1
execute if score info1 settings matches 5.. run scoreboard players set info1 settings 1

execute if score info1 settings matches 1 unless score gamemode settings matches 3 run setblock 0 44 5 light_blue_glazed_terracotta[facing=west]
execute if score info1 settings matches 1 if score gamemode settings matches 3 run setblock 0 44 5 gray_glazed_terracotta[facing=west]
execute if score info1 settings matches 2 run setblock 0 44 5 lime_glazed_terracotta[facing=west]
execute if score info1 settings matches 3 run setblock 0 44 5 yellow_glazed_terracotta[facing=west]
execute if score info1 settings matches 4 run setblock 0 44 5 pink_glazed_terracotta[facing=west]
