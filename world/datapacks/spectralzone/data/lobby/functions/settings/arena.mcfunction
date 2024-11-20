scoreboard players add map settings 1
execute if score map settings matches 4 run scoreboard players set map settings 1

execute if score map settings matches 1 run setblock 0 44 10 green_glazed_terracotta[facing=west]
execute if score map settings matches 2 run setblock 0 44 10 cyan_glazed_terracotta[facing=west]
execute if score map settings matches 3 run setblock 0 44 10 light_gray_glazed_terracotta[facing=west]

execute if score map settings matches 1 run title @a actionbar {"text":"The white arena has been selected"}
execute if score map settings matches 2 run title @a actionbar {"text":"The purple arena has been selected"}
execute if score map settings matches 3 run title @a actionbar {"text":"The red arena has been selected"}

