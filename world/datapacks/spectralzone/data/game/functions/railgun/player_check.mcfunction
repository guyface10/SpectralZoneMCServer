summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["ray.pos"]}

execute if entity @a[tag=shootRay,limit=1,team=!red,team=!blue] at @s[tag=!p.invulnerable] positioned ~-0.75 ~-0.35 ~-0.75 if entity @e[type=area_effect_cloud,tag=ray.pos,dx=0.5,dy=1.5,dz=0.5,limit=1] run function game:railgun/player_found
execute if entity @a[tag=shootRay,limit=1,team=!red,team=!blue] at @s[tag=p.invulnerable] positioned ~-0.75 ~-0.35 ~-0.75 if entity @e[type=area_effect_cloud,tag=ray.pos,dx=0.5,dy=1.5,dz=0.5,limit=1] run function game:railgun/invulnerable

execute if entity @a[tag=shootRay,limit=1,team=red] at @s[team=!red,tag=!p.invulnerable] positioned ~-0.75 ~-0.35 ~-0.75 if entity @e[type=area_effect_cloud,tag=ray.pos,dx=0.5,dy=1.5,dz=0.5,limit=1] run function game:railgun/player_found
execute if entity @a[tag=shootRay,limit=1,team=red] at @s[team=!red,tag=p.invulnerable] positioned ~-0.75 ~-0.35 ~-0.75 if entity @e[type=area_effect_cloud,tag=ray.pos,dx=0.5,dy=1.5,dz=0.5,limit=1] run function game:railgun/invulnerable
execute if entity @a[tag=shootRay,limit=1,team=blue] at @s[team=!blue,tag=!p.invulnerable] positioned ~-0.75 ~-0.35 ~-0.75 if entity @e[type=area_effect_cloud,tag=ray.pos,dx=0.5,dy=1.5,dz=0.5,limit=1] run function game:railgun/player_found
execute if entity @a[tag=shootRay,limit=1,team=blue] at @s[team=!blue,tag=p.invulnerable] positioned ~-0.75 ~-0.35 ~-0.75 if entity @e[type=area_effect_cloud,tag=ray.pos,dx=0.5,dy=1.5,dz=0.5,limit=1] run function game:railgun/invulnerable

kill @e[type=area_effect_cloud,tag=ray.pos]