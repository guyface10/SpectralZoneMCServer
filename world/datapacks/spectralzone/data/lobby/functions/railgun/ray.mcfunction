execute if score limit rayData matches 3.. run particle dust 1 1 1 2 ~ ~ ~ 0 0 0 0 1 force
scoreboard players add limit rayData 1

execute as @a[distance=..3,tag=!shootRay,tag=!spawn,gamemode=adventure,limit=1] run function lobby:railgun/player_check

execute as @e[type=chicken,distance=..1] at @s run function lobby:railgun/hit_chicken

execute if score limit rayData matches 1..400 positioned ^ ^ ^0.25 if block ~ ~ ~ #minecraft:slabs unless block ~ ~ ~ #minecraft:slabs[type=double] run function lobby:railgun/found_slab
execute if score limit rayData matches 1..400 positioned ^ ^ ^0.25 if block ~ ~ ~ #game:ray run function lobby:railgun/ray