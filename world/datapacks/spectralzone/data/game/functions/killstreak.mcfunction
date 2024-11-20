scoreboard players add @s killstreak 1
scoreboard players operation #temp killstreak = @s killstreak
execute if score #temp killstreak matches 11.. run scoreboard players set #temp killstreak 10

execute store result block 0 0 0 Items[{Slot:0b}].tag.AttributeModifiers[].Amount double 0.004 run scoreboard players get #temp killstreak
loot replace entity @s[tag=!spawn,tag=!p.invisibility,team=!glow,gamemode=adventure] armor.head mine 0 0 0

team join red_win @s[team=red]
team join blue_win @s[team=blue]

execute if score @s killstreak matches 3 run tellraw @a[tag=!shootRay] ["\n",{"selector":"@s","bold":true}," is on a killing spree! ",{"text":"(3 killstreak)\n","color":"gray"}]
execute if score @s killstreak matches 3 run tellraw @s ["You are on a killing spree! ",{"text":"(3 killstreak)","color":"gray"}]
execute if score @s killstreak matches 5 run tellraw @a[tag=!shootRay] ["\n",{"selector":"@s","bold":true}," is on a rampage! ",{"text":"(5 killstreak)\n","color":"gray"}]
execute if score @s killstreak matches 5 run tellraw @s ["You are on a rampage! ",{"text":"(5 killstreak)","color":"gray"}]
execute if score @s killstreak matches 7 run tellraw @a[tag=!shootRay] ["\n",{"selector":"@s","bold":true}," is unstoppable! ",{"text":"(7 killstreak)\n","color":"gray"}]
execute if score @s killstreak matches 7 run tellraw @s ["You are unstoppable! ",{"text":"(7 killstreak)","color":"gray"}]
execute if score @s killstreak matches 10 run tellraw @a[tag=!shootRay] ["\n",{"selector":"@s","bold":true}," is godlike! ",{"text":"(10 killstreak)\n","color":"gray"}]
execute if score @s killstreak matches 10 run tellraw @s ["You are godlike! ",{"text":"(10 killstreak)","color":"gray"}]

team join red @s[team=red_win]
team join blue @s[team=blue_win]