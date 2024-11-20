title @a times 0 80 2
title @a title {"text":"Game force-ended!","color":"dark_gray","bold":true}

title @a subtitle [{"text":"Force-ended by ","color":"white"},{"selector":"@s"}]
execute if score gamemode settings matches 1 unless score players gameData matches 2.. run title @a subtitle {"text":"Not enough players","color":"white"}
execute if score gamemode settings matches 2 unless score red gameData matches 1.. run title @a subtitle {"text":"Not enough players","color":"white"}
execute if score gamemode settings matches 2 unless score blue gameData matches 1.. run title @a subtitle {"text":"Not enough players","color":"white"}

playsound entity.ender_dragon.growl voice @a ~ ~ ~ 999999 1.6

scoreboard players set endTimer gameData -2
schedule function lobby:load 4s