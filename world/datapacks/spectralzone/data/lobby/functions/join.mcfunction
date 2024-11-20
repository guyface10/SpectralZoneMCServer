tag @s remove spectate
tag @s remove spectator
scoreboard players set @s railgunCooldown -1
scoreboard players set @s respawnTimer -101
gamemode adventure @s
effect clear @s invisibility
effect clear @s glowing
clear @s
tp @s 7 42 8 -90 0
playsound entity.player.levelup voice @s ~ ~ ~ 999999 2
tag @s add spawn
scoreboard players set @s returnSpawn -1
scoreboard players set @s boostPad -1
scoreboard players set @s vil_cooldown 0
scoreboard players set @s killstreak 0

execute store result score players gameData if entity @a[team=!spectators]
execute unless score gamemode settings matches 3 if score players gameData matches 1..3 run setblock 0 44 8 blue_stained_glass
execute unless score gamemode settings matches 3 if score players gameData matches 4..7 run setblock 0 44 8 pink_stained_glass
execute unless score gamemode settings matches 3 if score players gameData matches 8.. run setblock 0 44 8 red_stained_glass
execute if score gamemode settings matches 3 if score players gameData matches 1..3 run setblock 0 44 8 cyan_stained_glass
execute if score gamemode settings matches 3 if score players gameData matches 4..7 run setblock 0 44 8 light_gray_stained_glass
execute if score gamemode settings matches 3 if score players gameData matches 8.. run setblock 0 44 8 gray_stained_glass

execute if score gamemode settings matches 1 run team join players @s
execute if score gamemode settings matches 2 run function lobby:randomize_teams
execute if score gamemode settings matches 3 run team join players @s
tag @s[team=spectators] add spectator

title @s times 0 80 2
title @s title {"text":"Spectral Zone","color":"gray","bold":true}
title @s subtitle {"text":"by SP Minigame Makers","color":"white"}

xp set @s 16 levels
xp set @s 41 points
xp set @s 0 levels

function game:powerup/clear

tag @s add registered
scoreboard players reset @s join