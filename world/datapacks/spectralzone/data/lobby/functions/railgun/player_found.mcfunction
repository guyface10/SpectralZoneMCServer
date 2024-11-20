team join red_win @s[team=red]
team join blue_win @s[team=blue]
team join red_win @a[tag=shootRay,limit=1,team=red]
team join blue_win @a[tag=shootRay,limit=1,team=blue]

tellraw @a[tag=shootRay,limit=1] ""
tellraw @a [{"selector":"@a[tag=shootRay,limit=1]","color":"dark_gray"},{"text":" shot ","color":"white"},{"selector":"@s","color":"dark_gray"}]
execute as @a[tag=shootRay,limit=1] run function game:killstreak
tellraw @a[tag=shootRay,limit=1] ""

title @a[tag=shootRay,limit=1] times 0 40 2
title @a[tag=shootRay,limit=1] title ""
title @a[tag=shootRay,limit=1] subtitle [{"text":"You killed ","color":"white"},{"selector":"@s","color":"white"},{"text":"!"}]

team join red @s[team=red_win]
team join blue @s[team=blue_win]
team join red @a[tag=shootRay,limit=1,team=red_win]
team join blue @a[tag=shootRay,limit=1,team=blue_win]

playsound block.note_block.bell voice @a[tag=shootRay,limit=1] ~ ~ ~ 999999 1
playsound block.note_block.bell voice @a[tag=shootRay,limit=1] ~ ~ ~ 999999 1

playsound entity.wither.hurt voice @a ~ ~ ~ 2 1.5
playsound entity.wither.hurt voice @a ~ ~ ~ 2 1.5
playsound entity.wither.hurt voice @a ~ ~ ~ 2 1.5
particle end_rod ~ ~1.2 ~ 0.1 0.3 0.1 0.15 25
particle flash ~ ~0.5 ~ 0 0 0 0 1 force

tp @s 7 42 8 -90 0
function lobby:to_spawn