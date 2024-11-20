### Lobby Main Loop

# Start
execute store result score players gameData if entity @a[team=!spectators]
execute store result score red gameData if entity @a[team=red]
execute store result score blue gameData if entity @a[team=blue]
execute if score startTimer gameData matches 0.. run function lobby:start/main
execute if score startTimer gameData matches 17.. if score doForceEnd settings matches 1 if score gamemode settings matches 1 unless score players gameData matches 2.. run function lobby:start/error
execute if score startTimer gameData matches 17.. if score doForceEnd settings matches 1 if score gamemode settings matches 2 unless score red gameData matches 1.. run function lobby:start/error
execute if score startTimer gameData matches 17.. if score doForceEnd settings matches 1 if score gamemode settings matches 2 unless score blue gameData matches 1.. run function lobby:start/error
execute if score startTimer gameData matches 17.. if score doForceEnd settings matches 1 if score gamemode settings matches 3 unless score players gameData matches 2.. run function lobby:start/error

# Railgun
execute as @a[scores={shootRay=1,railgunCooldown=-1,returnSpawn=-1..49}] at @s run function lobby:railgun/create
scoreboard players reset @a shootRay
xp set @a[scores={railgunCooldown=0..}] 16 levels
xp set @a[scores={railgunCooldown=40}] 0 points
xp add @a[scores={railgunCooldown=0..}] 1 points
xp set @a[scores={railgunCooldown=-1}] 41 points
xp set @a 0 levels
scoreboard players remove @a[scores={railgunCooldown=0..}] railgunCooldown 1

# Detect Players in Spawn
execute as @a[tag=!spawn] if entity @s[x=-1,y=42,z=1,dx=20,dy=2,dz=16] run function lobby:to_spawn
execute as @a[tag=spawn] unless entity @s[x=-1,y=42,z=1,dx=20,dy=2,dz=16] run title @s[gamemode=adventure] actionbar [{"text":"Hint:","bold":true,"color":"dark_gray"},{"text":" Hold sneak to get back to the spawn!","bold":false,"color":"gray"}]
execute as @a[tag=spawn] unless entity @s[x=-1,y=42,z=1,dx=20,dy=2,dz=16] run tag @s remove spawn
effect give @a[tag=!spawn,gamemode=adventure] invisibility 999999 255 true
title @a[tag=spawn,team=spectators] actionbar {"text":"You are a spectator! Join a different team to play.","color":"white"}

# Teams
execute if score startTimer gameData matches -1 if score gamemode settings matches 1 as @a[team=!players,x=16,y=42,z=5,dx=2,dy=0,dz=2] run function lobby:join_team
execute if score startTimer gameData matches -1 if score gamemode settings matches 1 as @a[team=!spectators,x=16,y=42,z=9,dx=2,dy=0,dz=2] run function lobby:join_team
execute if score startTimer gameData matches -1 if score gamemode settings matches 2 as @a[team=!blue,x=16,y=42,z=3,dx=2,dy=0,dz=2] run function lobby:join_team
execute if score startTimer gameData matches -1 if score gamemode settings matches 2 as @a[team=!spectators,x=16,y=42,z=7,dx=2,dy=0,dz=2] run function lobby:join_team
execute if score startTimer gameData matches -1 if score gamemode settings matches 2 as @a[team=!red,x=16,y=42,z=11,dx=2,dy=0,dz=2] run function lobby:join_team
execute if score startTimer gameData matches -1 if score gamemode settings matches 3 as @a[team=!players,x=16,y=42,z=5,dx=2,dy=0,dz=2] run function lobby:join_team
execute if score startTimer gameData matches -1 if score gamemode settings matches 3 as @a[team=!spectators,x=16,y=42,z=9,dx=2,dy=0,dz=2] run function lobby:join_team
# Holo
scoreboard players add @e[type=area_effect_cloud,tag=teamSelectionHolo,limit=1] holoTimer 1
scoreboard players set @e[type=area_effect_cloud,tag=teamSelectionHolo,scores={holoTimer=21..},limit=1] holoTimer 1
data modify entity @e[type=area_effect_cloud,tag=teamSelectionHolo,scores={holoTimer=1..5},limit=1] CustomName set value '[{"text":"","color":"white","bold":true},">>> Team Selection <<<"]'
data modify entity @e[type=area_effect_cloud,tag=teamSelectionHolo,scores={holoTimer=6..10},limit=1] CustomName set value '[{"text":"","color":"white","bold":true},{"text":">","color":"gray"},">> Team Selection <<",{"text":"<","color":"gray"}]'
data modify entity @e[type=area_effect_cloud,tag=teamSelectionHolo,scores={holoTimer=11..15},limit=1] CustomName set value '[{"text":"","color":"white","bold":true},">",{"text":">","color":"gray"},"> Team Selection <",{"text":"<","color":"gray"},"<"]'
data modify entity @e[type=area_effect_cloud,tag=teamSelectionHolo,scores={holoTimer=16..20},limit=1] CustomName set value '[{"text":"","color":"white","bold":true},">>",{"text":">","color":"gray"}," Team Selection ",{"text":"<","color":"gray"},"<<"]'


# Return To Spawn
execute as @a[gamemode=!creative,gamemode=!spectator,tag=!spawn,scores={returnSpawn=0..,sneak=0}] run function lobby:return/cancel
execute as @a[gamemode=!creative,gamemode=!spectator,tag=!spawn,scores={sneak=1..}] run function lobby:return/main
scoreboard players set @a sneak 0
scoreboard players remove returnParticle gameData 1
execute if score returnParticle gameData matches -1 run scoreboard players set returnParticle gameData 8

# Click Board
execute store result score board gameData if entity @e[type=villager,tag=board]
execute unless score board gameData matches 15 run function lobby:board/load
scoreboard players remove @a[scores={vil_cooldown=1..}] vil_cooldown 1
execute as @a[scores={vil=1..,vil_cooldown=0}] at @s run function lobby:board/main
scoreboard players reset @a vil

# Join
execute as @a[tag=!registered] run function lobby:join
execute as @a[scores={join=1}] run function lobby:join	