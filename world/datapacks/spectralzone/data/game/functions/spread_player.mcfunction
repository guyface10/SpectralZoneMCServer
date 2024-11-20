execute as @e[type=area_effect_cloud,tag=spawnpoint] if score @s map = map settings at @s unless entity @a[gamemode=!spectator,distance=..10,limit=1] run tag @s add possible_spawn
execute unless entity @e[type=area_effect_cloud,tag=spawnpoint,tag=possible_spawn] as @e[type=area_effect_cloud,tag=spawnpoint] if score @s map = map settings run tag @s add possible_spawn
tp @s @e[type=area_effect_cloud,tag=spawnpoint,tag=possible_spawn,limit=1,sort=random]
tag @e[type=area_effect_cloud,tag=spawnpoint] remove possible_spawn

scoreboard players set @s bounty 2
gamemode adventure @s