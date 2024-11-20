scoreboard players set limit rayData 0

execute if score startTimer gameData matches -1 run function lobby:start/countdown
execute if score startTimer gameData matches 20.. run function lobby:start/cancel