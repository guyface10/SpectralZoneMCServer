execute store result score red gameData if entity @a[team=red]
execute store result score blue gameData if entity @a[team=blue]

execute if score red gameData < blue gameData run team join red @s
execute if score blue gameData < red gameData run team join blue @s
execute if score red gameData = blue gameData run team join blue @s