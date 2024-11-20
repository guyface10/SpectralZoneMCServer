scoreboard players add @s returnSpawn 1

title @s[scores={returnSpawn=40..}] times 0 10 0

title @s[scores={returnSpawn=40..51}] subtitle {"text":"Returning to spawn.","color":"white"}
title @s[scores={returnSpawn=52..63}] subtitle {"text":"Returning to spawn..","color":"white"}
title @s[scores={returnSpawn=64..75}] subtitle {"text":"Returning to spawn...","color":"white"}
title @s[scores={returnSpawn=76..87}] subtitle {"text":"Returning to spawn.","color":"white"}
title @s[scores={returnSpawn=88..99}] subtitle {"text":"Returning to spawn..","color":"white"}
title @s[scores={returnSpawn=100..111}] subtitle {"text":"Returning to spawn...","color":"white"}

title @s[scores={returnSpawn=40..51}] title [{"bold":true,"text":"| ","color":"white"},{"text":"| | | | |","color":"dark_gray"}]
title @s[scores={returnSpawn=52..63}] title [{"bold":true,"text":"| | ","color":"white"},{"text":"| | | |","color":"dark_gray"}]
title @s[scores={returnSpawn=64..75}] title [{"bold":true,"text":"| | | ","color":"white"},{"text":"| | |","color":"dark_gray"}]
title @s[scores={returnSpawn=76..87}] title [{"bold":true,"text":"| | | | ","color":"white"},{"text":"| |","color":"dark_gray"}]
title @s[scores={returnSpawn=88..99}] title [{"bold":true,"text":"| | | | | ","color":"white"},{"text":"|","color":"dark_gray"}]
title @s[scores={returnSpawn=100..111}] title [{"bold":true,"text":"| | | | | |","color":"white"},{"text":"","color":"dark_gray"}]

playsound block.note_block.bass master @s[scores={returnSpawn=40}] ~ ~ ~ 999999 0.9
playsound block.note_block.bass master @s[scores={returnSpawn=52}] ~ ~ ~ 999999 0.94
playsound block.note_block.bass master @s[scores={returnSpawn=64}] ~ ~ ~ 999999 0.98
playsound block.note_block.bass master @s[scores={returnSpawn=76}] ~ ~ ~ 999999 1.02
playsound block.note_block.bass master @s[scores={returnSpawn=88}] ~ ~ ~ 999999 1.06
playsound block.note_block.bass master @s[scores={returnSpawn=100}] ~ ~ ~ 999999 1.10

effect give @s[scores={returnSpawn=40..}] jump_boost 1 200 true
effect give @s[scores={returnSpawn=40..}] slowness 1 255 true

execute at @s[scores={returnSpawn=40..}] if score returnParticle gameData matches 0 run particle end_rod ~ ~1 ~ 0.4 0.8 0.4 0 1

execute if score @s returnSpawn matches 112 run function lobby:return/finish