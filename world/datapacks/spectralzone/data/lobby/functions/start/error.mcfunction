scoreboard players set startTimer gameData -1
function lobby:start/cancel
title @a subtitle {"text":"Not enough players!","color":"white"}

tellraw @a {"text":"\nNot enough players!","color":"white","bold":true}
tellraw @a {"text":"Get more players online, or join a team by jumping on one of the team selection platforms","color":"gray"}
execute if score gamemode settings matches 2 run tellraw @a {"text":"Remember that there needs to be at least one person on each team","color":"gray"}
tellraw @a ""