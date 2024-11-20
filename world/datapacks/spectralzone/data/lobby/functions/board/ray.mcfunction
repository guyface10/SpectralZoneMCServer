execute as @e[type=villager,tag=board,dx=0,limit=1,sort=nearest] run function lobby:board/hit

scoreboard players remove limit rayData 1
execute if score limit rayData matches 1.. positioned ^ ^ ^0.1 run function lobby:board/ray