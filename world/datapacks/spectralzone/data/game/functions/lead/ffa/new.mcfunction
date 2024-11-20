tag @a remove lead
tag @s add lead
tellraw @a ["",{"selector":"@a[tag=lead,limit=1]","bold":true},{"text":" took the lead! (","bold":false},{"score":{"objective":"score","name":"@a[tag=lead,limit=1]"},"bold":true},{"text":"/","bold":false},{"score":{"objective":"settings","name":"goal"},"bold":false},{"text":")","bold":false}]
playsound block.note_block.bit voice @a ~ ~ ~ 10000 2