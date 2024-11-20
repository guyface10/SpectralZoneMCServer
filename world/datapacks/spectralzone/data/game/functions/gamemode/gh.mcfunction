# Lead

execute unless entity @a[tag=!spectate,tag=lead,limit=1] if entity @a[tag=!spectate,scores={score=1..}] run function game:lead/ffa/get
execute as @a[tag=!spectate,tag=!lead] if score @s score > @a[tag=!spectate,tag=lead,limit=1] score run function game:lead/ffa/new
execute if entity @a[tag=!spectate,tag=lead] run bossbar set players name [{"text":"Goal: ","color":"gray"},{"score":{"objective":"settings","name":"goal"},"color":"white","bold":true},{"text":" || ","color":"dark_gray"},{"text":"Lead: "},{"selector":"@a[tag=lead,limit=1]","color":"white"}]
execute unless entity @a[tag=!spectate,tag=lead] run bossbar set players name [{"text":"Goal: ","color":"gray"},{"score":{"objective":"settings","name":"goal"},"color":"white","bold":true},{"text":" || ","color":"dark_gray"},{"text":"Lead: "},{"text":"-","color":"white"}]


# Bossbar

bossbar set players players @a
execute store result bossbar players max run scoreboard players get goal settings
execute store result bossbar players value run scoreboard players get @a[tag=lead,limit=1] score


# Force End

execute if score doForceEnd settings matches 1 if score endTimer gameData matches -1 unless score players gameData matches 2.. run function game:force_end


# Game End

execute if score endTimer gameData matches -1 as @a if score @s score >= goal settings run function game:win


# Glowing

execute if score endTimer gameData matches -1 run scoreboard players add @a[team=glow] glowTimer 1
execute if score endTimer gameData matches -1 run scoreboard players add @a[team=glow,scores={glowTimer=6}] score 1
execute if score endTimer gameData matches -1 run scoreboard players set @a[team=glow,scores={glowTimer=6}] glowTimer 0
execute as @a[tag=!spectate,gamemode=!spectator] at @s positioned ~ ~-0.6 ~ if entity @e[type=armor_stand,tag=glowingOrb,distance=..0.8] at @s run function game:glow
execute as @e[type=armor_stand,tag=glowingOrb,limit=1] at @s run tp @s ~ ~ ~ ~5 ~