effect clear @s slowness
effect clear @s jump_boost

tp @s 7 42 8 -90 0
function lobby:to_spawn
scoreboard players set @s returnSpawn -1

playsound block.note_block.bass master @s ~ ~ ~ 999999 2

title @s times 0 60 2
title @s title ""
title @s subtitle "Returned to spawn!"
