scoreboard players remove @s respawnTimer 1

execute if score @s respawnTimer matches 60 run title @s times 0 60 20
execute if score @s respawnTimer matches 60 run title @s title {"text":"You died!","color":"dark_gray","bold":true}
execute if score @s respawnTimer matches 60 run title @s subtitle {"text":"Respawning in 3","color":"white"}

execute if score @s respawnTimer matches 40 run title @s times 0 60 20
execute if score @s respawnTimer matches 40 run title @s title {"text":"You died!","color":"dark_gray","bold":true}
execute if score @s respawnTimer matches 40 run title @s subtitle {"text":"Respawning in 2","color":"white"}

execute if score @s respawnTimer matches 20 run title @s times 0 60 20
execute if score @s respawnTimer matches 20 run title @s title {"text":"You died!","color":"dark_gray","bold":true}
execute if score @s respawnTimer matches 20 run title @s subtitle {"text":"Respawning in 1","color":"white"}

execute if score @s respawnTimer matches 0 run title @s times 0 40 20
execute if score @s respawnTimer matches 0 run title @s title {"text":"Respawned!","color":"white","bold":true}
execute if score @s respawnTimer matches 0 run title @s subtitle ""
execute if score @s respawnTimer matches 0 run playsound block.conduit.deactivate master @s ~ ~ ~ 999999 2

spectate @a[gamemode=!spectator,limit=1,sort=nearest] @s[scores={respawnTimer=0..}]

execute if score @s respawnTimer matches -30..-1 run tag @s add p.invulnerable
execute if score @s respawnTimer matches -31 run tag @s remove p.invulnerable

execute if score @s respawnTimer matches -1 run title @s actionbar ""
execute if score @s respawnTimer matches -1 run function game:spread_player