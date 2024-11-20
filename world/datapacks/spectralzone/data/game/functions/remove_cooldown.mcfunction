scoreboard players remove @s railgunCooldown 2
xp add @s 2

scoreboard players remove #temp killstreak 1
execute if score #temp killstreak matches 1.. run function game:remove_cooldown