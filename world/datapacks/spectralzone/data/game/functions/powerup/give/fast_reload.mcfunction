tag @s add p.fast_reload
scoreboard players set @s p.fast_reload 400
scoreboard players operation @s p.start = @s p.fast_reload
scoreboard players operation @s p.timer = @s p.start

playsound block.beacon.power_select voice @a ~ ~ ~ 999999 2 0
playsound entity.elder_guardian.curse voice @a ~ ~ ~ 999999 1.6 0

title @a subtitle "Fast Reload powerup taken!"

team join red_win @s[team=red]
team join blue_win @s[team=blue]
tellraw @a ["\n",{"selector":"@s"},{"text":" picked up a Fast Reload powerup!","color":"white"},"\n"]
team join red @s[team=red_win]
team join blue @s[team=blue_win]