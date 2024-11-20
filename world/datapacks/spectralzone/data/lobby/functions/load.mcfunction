tp @a 7 42 8 -90 0
scoreboard players set @a killstreak 0
playsound block.note_block.cow_bell voice @a ~ ~ ~ 999999 0
clear @a
gamemode adventure @a
scoreboard players reset * score
effect clear @a invisibility
effect clear @a glowing
effect clear @a levitation
scoreboard objectives setdisplay sidebar
scoreboard objectives setdisplay list
tag @a remove winner
tag @a remove spectate
tag @a add spawn
scoreboard players set @a boostPad -1
scoreboard players set @a returnSpawn -1
scoreboard players set @a vil_cooldown 0
scoreboard players reset @a vil
kill @e[type=armor_stand,tag=powerup]
kill @e[type=armor_stand,tag=glowingOrb]

title @a actionbar ""

team join blue @a[team=blue_win]
team join red @a[team=red_win]
team join players @a[team=glow]

execute store result score players gameData if entity @a[team=!spectators]
execute unless score gamemode settings matches 3 if score players gameData matches 1..3 run setblock 0 44 8 blue_stained_glass
execute unless score gamemode settings matches 3 if score players gameData matches 4..7 run setblock 0 44 8 pink_stained_glass
execute unless score gamemode settings matches 3 if score players gameData matches 8.. run setblock 0 44 8 red_stained_glass
execute if score gamemode settings matches 3 if score players gameData matches 1..3 run setblock 0 44 8 cyan_stained_glass
execute if score gamemode settings matches 3 if score players gameData matches 4..7 run setblock 0 44 8 light_gray_stained_glass
execute if score gamemode settings matches 3 if score players gameData matches 8.. run setblock 0 44 8 gray_stained_glass

execute as @a run function game:powerup/clear

scoreboard players set @a railgunCooldown -1
xp set @a 16 levels
xp set @a 41 points
xp set @a 0 levels

bossbar set players visible false
bossbar set red visible false
bossbar set blue visible false
team modify red nametagVisibility always
team modify blue nametagVisibility always
team modify red seeFriendlyInvisibles false
team modify blue seeFriendlyInvisibles false
team modify players seeFriendlyInvisibles false

scoreboard players set startTimer gameData -1
scoreboard players set inGame gameData 0



function lobby:board/load