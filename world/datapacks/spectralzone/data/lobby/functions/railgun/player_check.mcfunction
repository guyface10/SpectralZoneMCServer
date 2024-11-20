summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["ray.pos"]}
execute at @s[tag=!p.invulnerable] positioned ~-0.75 ~-0.35 ~-0.75 if entity @e[type=area_effect_cloud,tag=ray.pos,dx=0.5,dy=1.5,dz=0.5,limit=1] run function lobby:railgun/player_found
execute at @s[tag=p.invulnerable] positioned ~-0.75 ~-0.35 ~-0.75 if entity @e[type=area_effect_cloud,tag=ray.pos,dx=0.5,dy=1.5,dz=0.5,limit=1] run function game:railgun/invulnerable
kill @e[type=area_effect_cloud,tag=ray.pos]