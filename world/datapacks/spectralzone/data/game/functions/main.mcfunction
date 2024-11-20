# Player Handling

execute as @a[tag=!registered] run function game:join
execute as @a[scores={join=1}] run function game:join


# Gamemodes

execute if score gamemode settings matches 1 run function game:gamemode/ffa
execute if score gamemode settings matches 2 run function game:gamemode/tdm
execute if score gamemode settings matches 3 run function game:gamemode/gh


# Railgun & XP Bar

execute if score endTimer gameData matches -1 as @a[scores={shootRay=1,railgunCooldown=-1}] at @s run function game:railgun/create
scoreboard players reset @a shootRay
xp set @a[scores={railgunCooldown=0..}] 16 levels
xp set @a[scores={railgunCooldown=40}] 0 points
xp add @a[scores={railgunCooldown=0..}] 1 points
xp set @a[scores={railgunCooldown=-1}] 41 points
xp set @a 0 levels
scoreboard players remove @a[scores={railgunCooldown=0..}] railgunCooldown 1


# Respawn

execute if score endTimer gameData matches -1 as @a[scores={respawnTimer=-30..}] at @s run function game:respawn


# Spectators

execute as @a[tag=spectate,team=!] at @s run spectate @a[tag=!spectate,gamemode=!spectator,limit=1,sort=nearest] @s
execute if score endTimer gameData matches 0.. as @a[gamemode=spectator] run spectate @a[tag=!spectate,gamemode=!spectator,tag=winner,limit=1,sort=nearest] @s


# Force End

execute store result score players gameData if entity @a[team=!spectators]
execute store result score red gameData if entity @a[team=red]
execute store result score blue gameData if entity @a[team=blue]


# Powerups

execute if score powerups settings matches 1 run function game:powerup/main


# Game End

execute if score endTimer gameData matches 0.. run scoreboard players add endTimer gameData 1
execute if score endTimer gameData matches 220 run function lobby:load
