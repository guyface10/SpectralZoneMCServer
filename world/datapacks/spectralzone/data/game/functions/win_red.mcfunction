title @a times 1 80 10
title @a title [{"text":"Red team won","color":"red","bold":true}]
title @a subtitle [{"text":"They were the first to reach ","color":"white"},{"score":{"objective":"settings","name":"goal"},"color":"white"},{"text":" points","color":"white"}]
playsound ui.toast.challenge_complete voice @a ~ ~ ~ 999999 0
tellraw @a ["\n  The ",{"text":"Red team","color":"red","bold":true}," won the game!\n"]

xp set @a 16 levels
xp set @a 41 points
xp set @a 0 levels

tag @a remove winner
tag @a[team=red] add winner

team join blue_win @a[team=blue]
team join red_win @a[team=red]
effect give @a[tag=winner] glowing 999999 0 true

scoreboard players set endTimer gameData 0