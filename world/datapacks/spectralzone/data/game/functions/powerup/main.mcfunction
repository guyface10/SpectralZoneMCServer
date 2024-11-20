execute as @e[type=armor_stand,tag=powerup,limit=1] at @s run tp @s ~ ~ ~ ~5 ~

execute if score powerupDelay gameData matches 1.. run scoreboard players remove powerupDelay gameData 1
execute if score powerupDelay gameData matches 0 if score endTimer gameData matches -1 run function game:powerup/spawn_check

scoreboard players add powerup_rand gameData 1
execute if score powerup_rand gameData matches 5.. run scoreboard players set powerup_rand gameData 1

execute as @a[tag=!spectate,gamemode=!spectator] at @s positioned ~ ~-0.6 ~ if entity @e[type=armor_stand,tag=powerup,distance=..0.8] run function game:powerup/give


# TIME LEFT
scoreboard players remove @a[scores={p.timer=0..}] p.timer 1
execute as @a[scores={p.timer=0..}] run scoreboard players operation @s p.time = @s p.timer
execute as @a[scores={p.timer=0..}] run scoreboard players operation @s p.time *= #factor p.time
execute as @a[scores={p.timer=0..}] run scoreboard players operation @s p.time /= @s p.start
title @a[gamemode=!spectator,scores={p.time=11}] actionbar [{"bold":true,"text":"▍ ▍ ▍ ▍ ▍ ▍ ▍ ▍ ▍ ▍ ▍ ▍","color":"white"},{"text":"","color":"dark_gray"}]
title @a[gamemode=!spectator,scores={p.time=10}] actionbar [{"bold":true,"text":"▍ ▍ ▍ ▍ ▍ ▍ ▍ ▍ ▍ ▍ ▍ ","color":"white"},{"text":"▍","color":"dark_gray"}]
title @a[gamemode=!spectator,scores={p.time=9}] actionbar [{"bold":true,"text":"▍ ▍ ▍ ▍ ▍ ▍ ▍ ▍ ▍ ▍ ","color":"white"},{"text":"▍ ▍","color":"dark_gray"}]
title @a[gamemode=!spectator,scores={p.time=8}] actionbar [{"bold":true,"text":"▍ ▍ ▍ ▍ ▍ ▍ ▍ ▍ ▍ ","color":"white"},{"text":"▍ ▍ ▍","color":"dark_gray"}]
title @a[gamemode=!spectator,scores={p.time=7}] actionbar [{"bold":true,"text":"▍ ▍ ▍ ▍ ▍ ▍ ▍ ▍ ","color":"white"},{"text":"▍ ▍ ▍ ▍","color":"dark_gray"}]
title @a[gamemode=!spectator,scores={p.time=6}] actionbar [{"bold":true,"text":"▍ ▍ ▍ ▍ ▍ ▍ ▍ ","color":"white"},{"text":"▍ ▍ ▍ ▍ ▍","color":"dark_gray"}]
title @a[gamemode=!spectator,scores={p.time=5}] actionbar [{"bold":true,"text":"▍ ▍ ▍ ▍ ▍ ▍ ","color":"white"},{"text":"▍ ▍ ▍ ▍ ▍ ▍","color":"dark_gray"}]
title @a[gamemode=!spectator,scores={p.time=4}] actionbar [{"bold":true,"text":"▍ ▍ ▍ ▍ ▍ ","color":"white"},{"text":"▍ ▍ ▍ ▍ ▍ ▍ ▍","color":"dark_gray"}]
title @a[gamemode=!spectator,scores={p.time=3}] actionbar [{"bold":true,"text":"▍ ▍ ▍ ▍ ","color":"white"},{"text":"▍ ▍ ▍ ▍ ▍ ▍ ▍ ▍","color":"dark_gray"}]
title @a[gamemode=!spectator,scores={p.time=2}] actionbar [{"bold":true,"text":"▍ ▍ ▍ ","color":"white"},{"text":"▍ ▍ ▍ ▍ ▍ ▍ ▍ ▍ ▍","color":"dark_gray"}]
title @a[gamemode=!spectator,scores={p.time=1}] actionbar [{"bold":true,"text":"▍ ▍ ","color":"white"},{"text":"▍ ▍ ▍ ▍ ▍ ▍ ▍ ▍ ▍ ▍","color":"dark_gray"}]
title @a[gamemode=!spectator,scores={p.time=0}] actionbar [{"bold":true,"text":"▍ ","color":"white"},{"text":"▍ ▍ ▍ ▍ ▍ ▍ ▍ ▍ ▍ ▍ ▍","color":"dark_gray"}]
title @a[gamemode=!spectator,scores={p.timer=-1}] actionbar ""
scoreboard players reset @a[scores={p.timer=-1}] p.time
scoreboard players reset @a[scores={p.timer=-1}] p.timer


# INVISIBILITY
# main:main
scoreboard players remove @a[scores={p.invisibility=0..}] p.invisibility 1
playsound block.beacon.deactivate voice @a[scores={p.invisibility=-1}] ~ ~ ~ 999999 1.5
title @a[scores={p.invisibility=-1}] times 0 40 2
title @a[scores={p.invisibility=-1}] title ""
title @a[scores={p.invisibility=-1}] subtitle {"text":"Your Invisibility powerup ran out!"}
execute as @a[scores={p.invisibility=-1}] run scoreboard players operation #temp killstreak = @s killstreak
execute if entity @a[scores={p.invisibility=-1}] if score #temp killstreak matches 11.. run scoreboard players set #temp killstreak 10
execute if entity @a[scores={p.invisibility=-1}] store result block 0 0 0 Items[{Slot:0b}].tag.AttributeModifiers[].Amount double 0.004 run scoreboard players get #temp killstreak
execute as @a[scores={p.invisibility=-1}] run loot replace entity @s armor.head mine 0 0 0
tag @a[scores={p.invisibility=-1}] remove p.invisibility
scoreboard players reset @a[scores={p.invisibility=-1}] p.invisibility

# FAST RELOAD
# game:main, lobby:main
scoreboard players remove @a[scores={p.fast_reload=0..}] p.fast_reload 1
playsound block.beacon.deactivate voice @a[scores={p.fast_reload=-1}] ~ ~ ~ 999999 1.5
title @a[scores={p.fast_reload=-1}] times 0 40 2
title @a[scores={p.fast_reload=-1}] title ""
title @a[scores={p.fast_reload=-1}] subtitle {"text":"Your Fast Reload powerup wore off!"}
tag @a[scores={p.fast_reload=-1}] remove p.fast_reload
scoreboard players reset @a[scores={p.fast_reload=-1}] p.fast_reload

# INVULNERABILITY
# game:railgun/player_check, game:railgun/invulnerable
scoreboard players remove @a[scores={p.invulnerable=0..}] p.invulnerable 1
playsound block.beacon.deactivate voice @a[scores={p.invulnerable=-1}] ~ ~ ~ 999999 1.5
title @a[scores={p.invulnerable=-1}] times 0 40 2
title @a[scores={p.invulnerable=-1}] title ""
title @a[scores={p.invulnerable=-1}] subtitle {"text":"Your Invulnerability powerup wore off!"}
tag @a[scores={p.invulnerable=-1}] remove p.invulnerable
scoreboard players reset @a[scores={p.invulnerable=-1}] p.invulnerable

# SCATTERSHOT
# game:railgun/create, game:railgun/scattershot/*
scoreboard players remove @a[scores={p.scattershot=0..}] p.scattershot 1
playsound block.beacon.deactivate voice @a[scores={p.scattershot=-1}] ~ ~ ~ 999999 1.5
title @a[scores={p.=-1}] times 0 40 2
title @a[scores={p.scattershot=-1}] title ""
title @a[scores={p.scattershot=-1}] subtitle {"text":"Your Scattershot powerup wore off!"}
tag @a[scores={p.scattershot=-1}] remove p.scattershot
scoreboard players reset @a[scores={p.scattershot=-1}] p.scattershot