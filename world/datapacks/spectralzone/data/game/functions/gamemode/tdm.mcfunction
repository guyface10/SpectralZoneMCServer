# Lead

execute if score lead gameData matches 0 if score Blue score matches 1.. run function game:lead/tdm/blue
execute if score lead gameData matches 0 if score Red score matches 1.. run function game:lead/tdm/red
execute if score lead gameData matches 2 if score Blue score > Red score run function game:lead/tdm/blue
execute if score lead gameData matches 1 if score Red score > Blue score run function game:lead/tdm/red


# Bossbars

execute if score lead gameData matches 1 run bossbar set blue name [{"text":"Goal: ","color":"gray"},{"score":{"objective":"settings","name":"goal"},"color":"white","bold":true},{"text":" || ","color":"dark_gray"},{"text":"Lead: "},{"text":"Blue Team","color":"blue"}]
execute if score lead gameData matches 1 run bossbar set red name [{"text":"Goal: ","color":"gray"},{"score":{"objective":"settings","name":"goal"},"color":"white","bold":true},{"text":" || ","color":"dark_gray"},{"text":"Lead: "},{"text":"Blue Team","color":"blue"}]
execute if score lead gameData matches 2 run bossbar set blue name [{"text":"Goal: ","color":"gray"},{"score":{"objective":"settings","name":"goal"},"color":"white","bold":true},{"text":" || ","color":"dark_gray"},{"text":"Lead: "},{"text":"Red Team","color":"red"}]
execute if score lead gameData matches 2 run bossbar set red name [{"text":"Goal: ","color":"gray"},{"score":{"objective":"settings","name":"goal"},"color":"white","bold":true},{"text":" || ","color":"dark_gray"},{"text":"Lead: "},{"text":"Red Team","color":"red"}]
execute if score lead gameData matches 0 run bossbar set blue name [{"text":"Goal: ","color":"gray"},{"score":{"objective":"settings","name":"goal"},"color":"white","bold":true},{"text":" || ","color":"dark_gray"},{"text":"Lead: "},{"text":"-","color":"white"}]
execute if score lead gameData matches 0 run bossbar set red name [{"text":"Goal: ","color":"gray"},{"score":{"objective":"settings","name":"goal"},"color":"white","bold":true},{"text":" || ","color":"dark_gray"},{"text":"Lead: "},{"text":"-","color":"white"}]

bossbar set blue players @a[team=!red]
bossbar set red players @a[team=red]

execute store result bossbar blue max run scoreboard players get goal settings
execute store result bossbar red max run scoreboard players get goal settings

execute if score lead gameData matches 1 store result bossbar blue value run scoreboard players get Blue score
execute if score lead gameData matches 1 store result bossbar red value run scoreboard players get Blue score
execute if score lead gameData matches 2 store result bossbar blue value run scoreboard players get Red score
execute if score lead gameData matches 2 store result bossbar red value run scoreboard players get Red score


# Force End

execute if score doForceEnd settings matches 1 if score endTimer gameData matches -1 unless score red gameData matches 1.. run function game:force_end
execute if score doForceEnd settings matches 1 if score endTimer gameData matches -1 unless score blue gameData matches 1.. run function game:force_end


# Game End

execute if score endTimer gameData matches -1 if score Red score >= goal settings run function game:win_red
execute if score endTimer gameData matches -1 if score Blue score >= goal settings run function game:win_blue