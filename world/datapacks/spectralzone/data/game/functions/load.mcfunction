# Scoreboard Values

scoreboard players set @a respawnTimer -101
scoreboard players set @a railgunCooldown -1
scoreboard players set phase gameData 1
scoreboard players set startTimer gameData -2
scoreboard players set endTimer gameData -1
scoreboard players set inGame gameData 1


# Goal

execute if score players gameData matches 1..3 run scoreboard players set goal settings 10
execute if score players gameData matches 4..7 run scoreboard players set goal settings 15
execute if score players gameData matches 8.. run scoreboard players set goal settings 20
execute if score gamemode settings matches 3 if score players gameData matches 1..3 run scoreboard players set goal settings 400
execute if score gamemode settings matches 3 if score players gameData matches 4..7 run scoreboard players set goal settings 300
execute if score gamemode settings matches 3 if score players gameData matches 8.. run scoreboard players set goal settings 200


# Display

title @a times 0 60 5
title @a title {"text":"Game Started","color":"white","bold":true}
title @a subtitle [{"text":"First to ","color":"gray"},{"score":{"objective":"settings","name":"goal"},"color":"gray"},{"text":" points","color":"gray"}]
playsound block.note_block.iron_xylophone voice @a ~ ~ ~ 999999 2
playsound block.note_block.iron_xylophone voice @a ~ ~ ~ 999999 0
playsound block.ender_chest.open voice @a ~ ~ ~ 999999 0
execute if score gamemode settings matches 1 run tellraw @a [{"text":"\n    ","color":"gray"},{"text":"Free For All","color":"white","bold":true},"\n\n    Everyone will be fighting against each other.\n    Shoot other players to gain points.\n    First to reach ",{"score":{"objective":"settings","name":"goal"},"color":"green"}," points wins.\n"]
execute if score gamemode settings matches 2 run tellraw @a [{"text":"\n    ","color":"gray"},{"text":"Team Deathmatch","color":"white","bold":true},"\n\n    Two teams will be fighting against each\n    other, the ",{"text":"Red Team","color":"red"}," and the ",{"text":"Blue Team","color":"blue"},".\n    Shoot members of the opposing team to gain points.\n    First team to reach ",{"score":{"objective":"settings","name":"goal"},"color":"green"}," points wins.\n"]
execute if score gamemode settings matches 3 run tellraw @a [{"text":"\n    ","color":"gray"},{"text":"Glowhunt","color":"white","bold":true},"\n\n    Collect the ",{"text":"Glowing Orb","color":"gold"}," or shoot\n    a glowing player to start glowing.\n    While glowing, you will gain points. When\n    shot, the effect will be passed over.\n    First to reach ",{"score":{"objective":"settings","name":"goal"},"color":"green"}," points wins.\n",{"text":"    Powerups are disabled in this mode\n","color":"dark_gray","italic":true}]


# Teams

tag @a[team=spectators] add spectate
execute as @a[tag=!spectate] run function game:spread_player
team join spectators @a[tag=spectate]
gamemode spectator @a[tag=spectate,gamemode=!spectator]
team modify red nametagVisibility hideForOtherTeams
team modify blue nametagVisibility hideForOtherTeams
team modify red seeFriendlyInvisibles true
team modify blue seeFriendlyInvisibles true


# Map Details

execute if score map settings matches 1 run scoreboard objectives modify score displayname {"text":"Score","color":"dark_gray","bold":true}
execute if score map settings matches 2 run scoreboard objectives modify score displayname {"text":"Score","color":"dark_purple","bold":true}
execute if score map settings matches 3 run scoreboard objectives modify score displayname {"text":"Score","color":"red","bold":true}
execute if score map settings matches 1 run bossbar set players color white
execute if score map settings matches 2 run bossbar set players color purple
execute if score map settings matches 3 run bossbar set players color red


# Killstreaks

clear @a[scores={killstreak=1..}] carved_pumpkin
scoreboard players set @a killstreak 0
scoreboard objectives setdisplay list killstreak


# Score

scoreboard players reset * score
execute if score gamemode settings matches 1 run team join players @a[tag=!spectate]
execute if score gamemode settings matches 1 run scoreboard players set @a[tag=!spectate] score 0
execute if score gamemode settings matches 2 run scoreboard players set Blue score 0
execute if score gamemode settings matches 2 run scoreboard players set Red score 0
execute if score gamemode settings matches 3 run scoreboard players set @a[tag=!spectate] score 0
scoreboard objectives setdisplay sidebar score


# Powerups

kill @e[type=armor_stand,tag=powerup]
execute if score powerupDelay gameData matches ..600 run scoreboard players set powerupDelay gameData 601
execute as @a run function game:powerup/clear
execute if score map settings matches 1 run team modify powerup color white
execute if score map settings matches 2 run team modify powerup color dark_purple
execute if score map settings matches 3 run team modify powerup color red
execute if score gamemode settings matches 3 run team modify powerup color gold
scoreboard players set powerups settings 1
execute if score gamemode settings matches 3 run scoreboard players set powerups settings 0


# Glowing

kill @e[type=armor_stand,tag=glowingOrb]
execute if score gamemode settings matches 3 as @e[type=area_effect_cloud,tag=glowingOrbSpawn] if score @s map = map settings at @s run summon armor_stand ~ ~-0.6 ~ {Team:"powerup",Small:1b,Tags:["glowingOrb"],Invisible:1b,Glowing:1b,Marker:1b,NoGravity:1b,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:red_terracotta",Count:1b}]}


# Visibility
execute if score gamemode settings matches 4 run tag @a add spawn


# Lead

tag @a remove lead
scoreboard players set lead gameData 0


# Bossbars

execute if score gamemode settings matches 1 run bossbar set players visible true
execute if score gamemode settings matches 2 run bossbar set red visible true
execute if score gamemode settings matches 2 run bossbar set blue visible true
execute if score gamemode settings matches 3 run bossbar set players visible true
bossbar set players value 0
bossbar set red value 0
bossbar set blue value 0