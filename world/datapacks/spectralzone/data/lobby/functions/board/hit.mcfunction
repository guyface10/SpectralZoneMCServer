scoreboard players set limit rayData 0
execute at @a[tag=shootRay,limit=1] run playsound minecraft:block.end_portal_frame.fill master @a[tag=shootRay,limit=1] ~ ~ ~ 0.3 0.7
playsound minecraft:block.note_block.bit master @a[tag=shootRay,limit=1] ~ ~ ~ 999999 1
execute at @a[tag=shootRay,limit=1] run playsound minecraft:block.note_block.basedrum master @a[tag=shootRay,limit=1] ~ ~ ~ 0.3 1.2

execute if entity @s[tag=mode] if score startTimer gameData matches -1 run function lobby:board/boards/mode
execute if entity @s[tag=arena] if score startTimer gameData matches -1 run function lobby:board/boards/arena
execute if entity @s[tag=info] if score startTimer gameData matches -1 run function lobby:board/boards/info
execute if entity @s[tag=credits] if score startTimer gameData matches -1 run function lobby:board/boards/credits
execute if entity @s[tag=start] run function lobby:start/trigger
