scoreboard players set limit rayData 0
data modify entity @e[type=marker,tag=p.scattershot,limit=1] Rotation set from entity @s Rotation

execute store result score #deviation p.scattershot run data get entity @e[limit=1,sort=random] UUID[0]
scoreboard players operation #deviation p.scattershot %= $range p.scattershot
scoreboard players operation #temp p.scattershot = $range p.scattershot
scoreboard players operation #temp p.scattershot /= 2 const
scoreboard players operation #deviation p.scattershot -= #temp p.scattershot
execute store result score #result p.scattershot run data get entity @e[type=marker,tag=p.scattershot,limit=1] Rotation[0] 10
scoreboard players operation #result p.scattershot += #deviation p.scattershot
execute store result entity @e[type=marker,tag=p.scattershot,limit=1] Rotation[0] float 0.1 run scoreboard players get #result p.scattershot

execute store result score #deviation p.scattershot run data get entity @e[limit=1,sort=random] UUID[0]
scoreboard players operation #deviation p.scattershot %= $range p.scattershot
scoreboard players operation #temp p.scattershot = $range p.scattershot
scoreboard players operation #temp p.scattershot /= 2 const
scoreboard players operation #deviation p.scattershot -= #temp p.scattershot
execute store result score #result p.scattershot run data get entity @e[type=marker,tag=p.scattershot,limit=1] Rotation[1] 10
scoreboard players operation #result p.scattershot += #deviation p.scattershot
execute store result entity @e[type=marker,tag=p.scattershot,limit=1] Rotation[1] float 0.1 run scoreboard players get #result p.scattershot

execute rotated as @e[type=marker,tag=p.scattershot,limit=1] anchored eyes positioned ^ ^ ^0.4 anchored feet run function game:railgun/ray