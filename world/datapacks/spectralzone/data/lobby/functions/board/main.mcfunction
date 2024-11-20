tag @s add shootRay
scoreboard players set limit rayData 100
scoreboard players set @s vil_cooldown 8

execute anchored eyes positioned ^ ^ ^0.1 anchored feet run function lobby:board/ray

tag @s remove shootRay