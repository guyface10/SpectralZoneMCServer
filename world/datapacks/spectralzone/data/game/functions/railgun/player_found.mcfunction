team join red_win @s[team=red]
team join blue_win @s[team=blue]
team join red_win @a[tag=shootRay,limit=1,team=red]
team join blue_win @a[tag=shootRay,limit=1,team=blue]

execute if score gamemode settings matches 1 run scoreboard players add @a[tag=shootRay,limit=1] score 1
execute if score gamemode settings matches 2 if entity @s[team=blue_win] run scoreboard players add Red score 1
execute if score gamemode settings matches 2 if entity @s[team=red_win] run scoreboard players add Blue score 1

tellraw @a[tag=shootRay,limit=1] ""
tellraw @a [{"selector":"@a[tag=shootRay,limit=1]","color":"dark_gray"},{"text":" shot ","color":"white"},{"selector":"@s","color":"dark_gray"}]

execute as @a[tag=shootRay,limit=1] run function game:killstreak
item replace entity @s armor.head with carved_pumpkin{HideFlags:63,Enchantments:[{lvl:1s,id:"binding_curse"}],display:{Name:'{"text":""}'},GameItem:1b}
scoreboard players set @s killstreak 0

tellraw @a[tag=shootRay,limit=1] ""

title @a[tag=shootRay,limit=1] times 0 40 2
title @a[tag=shootRay,limit=1] title ""
title @a[tag=shootRay,limit=1] subtitle [{"text":"You killed ","color":"white"},{"selector":"@s","color":"white"},{"text":"!"}]

team join red @s[team=red_win]
team join blue @s[team=blue_win]
team join red @a[tag=shootRay,limit=1,team=red_win]
team join blue @a[tag=shootRay,limit=1,team=blue_win]

execute if score gamemode settings matches 3 if entity @s[team=glow] as @a[tag=shootRay,team=!glow,limit=1] at @s run function game:glow

playsound block.note_block.bell voice @a[tag=shootRay,limit=1] ~ ~ ~ 999999 1
playsound block.note_block.bell voice @a[tag=shootRay,limit=1] ~ ~ ~ 999999 1

scoreboard players set @s respawnTimer 61
gamemode spectator
playsound entity.wither.hurt voice @a ~ ~ ~ 2 1.5
playsound entity.wither.hurt voice @a ~ ~ ~ 2 1.5
playsound entity.wither.hurt voice @a ~ ~ ~ 2 1.5
playsound entity.wither.hurt voice @s ~ ~ ~ 999999 1.5
particle flash ~ ~0.5 ~ 0 0 0 0 1 force
particle end_rod ~ ~1.2 ~ 0.1 0.3 0.1 0.15 25
tp @s @a[tag=shootRay,limit=1]