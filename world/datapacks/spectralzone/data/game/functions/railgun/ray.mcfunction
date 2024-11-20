execute if score gamemode settings matches 1 if score limit rayData matches 3.. if score map settings matches 1 run particle dust 1 1 1 2 ~ ~ ~ 0 0 0 0 1 force
execute if score gamemode settings matches 1 if score limit rayData matches 3.. if score map settings matches 2 run particle dust 0.6 0.2 0.6 2 ~ ~ ~ 0 0 0 0 1 force
execute if score gamemode settings matches 1 if score limit rayData matches 3.. if score map settings matches 3 run particle dust 1 0 0 2 ~ ~ ~ 0 0 0 0 1 force
execute if score gamemode settings matches 2 if entity @s[team=red] if score limit rayData matches 3.. run particle dust 1 0 0 2 ~ ~ ~ 0 0 0 0 1 force
execute if score gamemode settings matches 2 if entity @s[team=blue] if score limit rayData matches 3.. run particle dust 0 0 1 2 ~ ~ ~ 0 0 0 0 1 force
execute if score gamemode settings matches 3 if score limit rayData matches 3.. if score map settings matches 1 run particle dust 1 1 1 2 ~ ~ ~ 0 0 0 0 1 force
execute if score gamemode settings matches 3 if score limit rayData matches 3.. if score map settings matches 2 run particle dust 0.6 0.2 0.6 2 ~ ~ ~ 0 0 0 0 1 force
execute if score gamemode settings matches 3 if score limit rayData matches 3.. if score map settings matches 3 run particle dust 1 0 0 2 ~ ~ ~ 0 0 0 0 1 force
scoreboard players add limit rayData 1

execute if score inGame gameData matches 1 if score endTimer gameData matches -1 as @a[distance=..3,tag=!shootRay,gamemode=adventure,scores={respawnTimer=-101..-1},limit=1] run function game:railgun/player_check

execute as @e[type=chicken,distance=..1] at @s run function lobby:railgun/hit_chicken

execute if score limit rayData matches 1..400 positioned ^ ^ ^0.25 if block ~ ~ ~ #minecraft:slabs unless block ~ ~ ~ #minecraft:slabs[type=double] run function game:railgun/found_slab
execute if score limit rayData matches 1..400 positioned ^ ^ ^0.25 if block ~ ~ ~ #game:ray run function game:railgun/ray