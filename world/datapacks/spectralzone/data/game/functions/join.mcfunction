tag @s add spectate
team join spectators @s
scoreboard players set @s railgunCooldown -1
scoreboard players set @s respawnTimer -102
gamemode spectator @s
clear @s
tp @s @r[tag=!spectate,gamemode=!spectator]
scoreboard players set @s boostPad -1

xp set @s 16 levels
xp set @s 41 points
xp set @s 0 levels

scoreboard players reset @s score
tag @s remove winner

function game:powerup/clear

tag @s add registered
scoreboard players reset @s join