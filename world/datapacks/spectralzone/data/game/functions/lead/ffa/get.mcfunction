scoreboard players operation #lead score > @a[tag=!spectate] score
execute as @a[tag=!spectate] if score @s score = #lead score run tag @s add lead
execute at @a[tag=!spectate,tag=lead,limit=1,sort=random] run tag @a[distance=0.001..] remove lead
tellraw @a ["",{"selector":"@a[tag=lead,limit=1]","bold":true},{"text":" took the lead! (","bold":false},{"score":{"objective":"score","name":"@a[tag=lead,limit=1]"}},{"text":"/","bold":false},{"score":{"objective":"settings","name":"goal"},"bold":false},{"text":")","bold":false}]
playsound block.note_block.bit voice @a ~ ~ ~ 10000 2
scoreboard players reset #lead score
