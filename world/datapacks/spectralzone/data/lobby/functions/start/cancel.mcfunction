playsound block.conduit.deactivate voice @a ~ ~ ~ 999999 2
playsound entity.blaze.death voice @a ~ ~ ~ 999999 1

title @a times 0 80 2
execute unless score startTimer gameData matches -1 run title @a title {"text":"Countdown Cancelled","color":"dark_gray","bold":true}
execute if score startTimer gameData matches -1 run title @a title ""
title @a subtitle ""

scoreboard players set startTimer gameData -1