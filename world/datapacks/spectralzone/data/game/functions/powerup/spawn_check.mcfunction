execute as @e[type=area_effect_cloud,tag=powerupSpawn] if score @s map = map settings at @s unless entity @a[tag=!spectate,gamemode=!spectator,distance=..15,limit=1] run tag @s add selected

execute as @e[type=area_effect_cloud,tag=powerupSpawn,tag=selected,limit=1,sort=random] run tag @s add powerupSpawning

execute if entity @e[type=area_effect_cloud,tag=powerupSpawn,tag=selected,tag=powerupSpawning,limit=1] run schedule function game:powerup/spawn 30t
execute if entity @e[type=area_effect_cloud,tag=powerupSpawn,tag=selected,tag=powerupSpawning,limit=1] run scoreboard players set powerupDelay gameData -1

tag @e[type=area_effect_cloud,tag=powerupSpawn,tag=selected] remove selected