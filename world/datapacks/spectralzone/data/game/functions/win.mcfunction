title @a times 1 80 10
title @a title [{"selector":"@s","bold":true},{"text":" won","color":"white","bold":true}]
title @a subtitle [{"text":"They were the first to reach ","color":"gray"},{"score":{"objective":"settings","name":"goal"},"color":"gray"},{"text":" points","color":"gray"}]
playsound ui.toast.challenge_complete voice @a ~ ~ ~ 999999 0
tellraw @a ["\n  ",{"selector":"@s","bold":true}," won the game!\n"]

xp set @a 16 levels
xp set @a 41 points
xp set @a 0 levels

tag @a remove winner
tag @s add winner

effect give @a[tag=winner] glowing 999999 0 true

scoreboard players set endTimer gameData 0