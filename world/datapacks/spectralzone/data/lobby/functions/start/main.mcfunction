execute if score startTimer gameData matches 18 run title @a times 1 40 0
execute if score startTimer gameData matches 18 run title @a title {"text":"Game starting","color":"dark_gray","bold":true}
execute if score startTimer gameData matches 18 run title @a subtitle {"text":"in 5 seconds","color":"white"}
execute if score startTimer gameData matches 18 run playsound block.note_block.iron_xylophone voice @a ~ ~ ~ 999999 0
execute if score startTimer gameData matches 18 run playsound block.note_block.iron_xylophone voice @a ~ ~ ~ 999999 0
execute if score startTimer gameData matches 18 run playsound block.note_block.iron_xylophone voice @a ~ ~ ~ 999999 0

execute if score startTimer gameData matches 39 run title @a times 0 40 0
execute if score startTimer gameData matches 39 run title @a title {"text":"Game starting","color":"dark_gray","bold":true}
execute if score startTimer gameData matches 39 run title @a subtitle {"text":"in 4 seconds","color":"white"}
execute if score startTimer gameData matches 39 run playsound block.note_block.iron_xylophone voice @a ~ ~ ~ 999999 0
execute if score startTimer gameData matches 39 run playsound block.note_block.iron_xylophone voice @a ~ ~ ~ 999999 0

execute if score startTimer gameData matches 60 run title @a times 0 40 0
execute if score startTimer gameData matches 60 run title @a title {"text":"Game starting","color":"dark_gray","bold":true}
execute if score startTimer gameData matches 60 run title @a subtitle {"text":"in 3 seconds","color":"white"}
execute if score startTimer gameData matches 60 run playsound block.note_block.iron_xylophone voice @a ~ ~ ~ 999999 0
execute if score startTimer gameData matches 60 run playsound block.note_block.iron_xylophone voice @a ~ ~ ~ 999999 0

execute if score startTimer gameData matches 80 run title @a times 0 40 0
execute if score startTimer gameData matches 80 run title @a title {"text":"Game starting","color":"dark_gray","bold":true}
execute if score startTimer gameData matches 80 run title @a subtitle {"text":"in 2 seconds","color":"white"}
execute if score startTimer gameData matches 80 run playsound block.note_block.iron_xylophone voice @a ~ ~ ~ 999999 0
execute if score startTimer gameData matches 80 run playsound block.note_block.iron_xylophone voice @a ~ ~ ~ 999999 0

execute if score startTimer gameData matches 100 run title @a times 0 40 0
execute if score startTimer gameData matches 100 run title @a title {"text":"Game starting","color":"dark_gray","bold":true}
execute if score startTimer gameData matches 100 run title @a subtitle {"text":"in 1 seconds","color":"white"}
execute if score startTimer gameData matches 100 run playsound block.note_block.iron_xylophone voice @a ~ ~ ~ 999999 0
execute if score startTimer gameData matches 100 run playsound block.note_block.iron_xylophone voice @a ~ ~ ~ 999999 0

execute if score startTimer gameData matches 120 run function game:load

scoreboard players add startTimer gameData 1