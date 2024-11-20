tag @s add p.scattershot
scoreboard players set @s p.scattershot 400
scoreboard players operation @s p.start = @s p.scattershot
scoreboard players operation @s p.timer = @s p.start

playsound entity.blaze.shoot voice @a ~ ~ ~ 999999 0.4 0
playsound entity.elder_guardian.curse voice @a ~ ~ ~ 999999 1.6 0

title @a subtitle "Scattershot powerup taken!"

team join red_win @s[team=red]
team join blue_win @s[team=blue]
tellraw @a ["\n",{"selector":"@s"},{"text":" picked up a Scattershot powerup!","color":"white"},"\n"]
team join red @s[team=red_win]
team join blue @s[team=blue_win]