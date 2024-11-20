tellraw @a [{"text":"The ","color":"white"},{"text":"Blue Team","bold":true,"color":"blue"},{"text":" took the lead! (","bold":false},{"score":{"objective":"score","name":"Blue"}},{"text":"/","bold":false},{"score":{"objective":"settings","name":"goal"},"bold":false},{"text":")","bold":false}]
playsound block.note_block.bit voice @a ~ ~ ~ 10000 2

scoreboard players set lead gameData 1