kill @e[type=armor_stand,tag=powerup,limit=1,sort=nearest]
title @a times 0 60 2
title @a title ""

execute if score powerup_rand gameData matches 1 run function game:powerup/give/invisibility
execute if score powerup_rand gameData matches 2 run function game:powerup/give/fast_reload
execute if score powerup_rand gameData matches 3 run function game:powerup/give/invulnerability
execute if score powerup_rand gameData matches 4 run function game:powerup/give/scattershot

scoreboard players set powerupDelay gameData 1400

playsound block.chest.close voice @a ~ ~ ~ 999999 0.6
playsound entity.elder_guardian.curse voice @a ~ ~ ~ 999999 2

