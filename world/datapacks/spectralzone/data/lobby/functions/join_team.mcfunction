execute if score gamemode settings matches 1 run team join players @a[team=!players,x=16,y=42,z=5,dx=2,dy=0,dz=2]
execute if score gamemode settings matches 1 run team join spectators @a[team=!spectators,x=16,y=42,z=9,dx=2,dy=0,dz=2]
execute if score gamemode settings matches 2 run team join blue @a[team=!blue,x=16,y=42,z=3,dx=2,dy=0,dz=2]
execute if score gamemode settings matches 2 run team join spectators @a[team=!spectators,x=16,y=42,z=7,dx=2,dy=0,dz=2]
execute if score gamemode settings matches 2 run team join red @a[team=!red,x=16,y=42,z=11,dx=2,dy=0,dz=2]
execute if score gamemode settings matches 3 run team join players @a[team=!players,x=16,y=42,z=5,dx=2,dy=0,dz=2]
execute if score gamemode settings matches 3 run team join spectators @a[team=!spectators,x=16,y=42,z=9,dx=2,dy=0,dz=2]

title @s times 0 60 2
title @s title ""
title @s[team=players] subtitle "You will now be playing"
title @s[team=spectators] subtitle "You will now be spectating"
title @s[team=red] subtitle "You joined the red team"
title @s[team=blue] subtitle "You joined the blue team"

title @s[team=!spectators,tag=spectator] actionbar "You will no longer be spectating!"
tag @s[team=!spectators,tag=spectator] remove spectator
tag @s[team=spectators] add spectator

execute store result score players gameData if entity @a[team=!spectators]
execute unless score gamemode settings matches 3 if score players gameData matches 1..3 run setblock 0 44 8 blue_stained_glass
execute unless score gamemode settings matches 3 if score players gameData matches 4..7 run setblock 0 44 8 pink_stained_glass
execute unless score gamemode settings matches 3 if score players gameData matches 8.. run setblock 0 44 8 red_stained_glass
execute if score gamemode settings matches 3 if score players gameData matches 1..3 run setblock 0 44 8 cyan_stained_glass
execute if score gamemode settings matches 3 if score players gameData matches 4..7 run setblock 0 44 8 light_gray_stained_glass
execute if score gamemode settings matches 3 if score players gameData matches 8.. run setblock 0 44 8 gray_stained_glass

playsound minecraft:entity.evoker.prepare_summon master @s ~ ~100 ~ 1 2 1
playsound minecraft:entity.illusioner.prepare_blindness master @s ~ ~100 ~ 1 2 1
playsound minecraft:block.note_block.bit master @s ~ ~100 ~ 1 0.8 1

