tag @s add shootRay
scoreboard players set limit rayData 0

scoreboard players set @s railgunCooldown 40
xp set @s 16 levels
xp set @s 0 points

scoreboard players set @s[tag=p.fast_reload] railgunCooldown 5
xp set @s[tag=p.fast_reload] 35 points

scoreboard players operation #temp killstreak = @s killstreak
execute if score #temp killstreak matches 11.. run scoreboard players set #temp killstreak 10
execute if entity @s[tag=!p.fast_reload] if score #temp killstreak matches 1.. run function game:remove_cooldown

xp set @s 0 levels

execute anchored eyes positioned ^ ^ ^0.4 anchored feet run function lobby:railgun/ray

tag @s remove shootRay

playsound entity.firework_rocket.large_blast_far master @a ~ ~ ~ 2 2
playsound entity.firework_rocket.large_blast_far master @a ~ ~ ~ 2 2
playsound entity.firework_rocket.large_blast_far master @a ~ ~ ~ 2 2
playsound entity.firework_rocket.large_blast_far master @a ~ ~ ~ 2 2