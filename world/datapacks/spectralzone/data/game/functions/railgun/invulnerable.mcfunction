title @a[tag=shootRay,limit=1] actionbar "That player is invulnerable!"
playsound item.shield.block voice @a[tag=shootRay,limit=1] ~ ~ ~ 999999 2
playsound item.shield.hit voice @a[tag=shootRay,limit=1] ~ ~ ~ 999999 1.5
execute at @s run particle crit ~ ~1 ~ 0.4 0.8 0.4 0.05 12 normal @a[tag=shootRay,limit=1]