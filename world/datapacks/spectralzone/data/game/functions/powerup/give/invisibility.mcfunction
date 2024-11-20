clear @s #main:armor

tag @s add p.invisibility
scoreboard players set @s p.invisibility 500
scoreboard players operation @s p.start = @s p.invisibility
scoreboard players operation @s p.timer = @s p.start

playsound entity.illusioner.cast_spell voice @a ~ ~ ~ 999999 1 0
playsound entity.evoker.prepare_summon voice @a ~ ~ ~ 999999 2 0 

title @a subtitle "Invisibility powerup taken!"

team join red_win @s[team=red]
team join blue_win @s[team=blue]
tellraw @a ["\n",{"selector":"@s"},{"text":" picked up an Invisibility powerup!","color":"white"},"\n"]
team join red @s[team=red_win]
team join blue @s[team=blue_win]