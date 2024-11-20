execute at @e[type=area_effect_cloud,tag=powerupSpawn,tag=powerupSpawning,limit=1] run summon armor_stand ~ ~-0.6 ~ {Team:"powerup",Small:1b,Tags:["powerup"],Invisible:1b,Glowing:1b,Marker:1b,NoGravity:1b,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:red_terracotta",Count:1b}]}
tag @e[type=area_effect_cloud,tag=powerupSpawning] remove powerupSpawning
playsound entity.elder_guardian.curse voice @a ~ ~ ~ 999999 0.7
title @a times 0 60 2
title @a title ""
title @a subtitle "A powerup spawned!"
tellraw @a {"text":"\nA powerup spawned!\n","color":"white"}
scoreboard players set powerupDelay gameData -1