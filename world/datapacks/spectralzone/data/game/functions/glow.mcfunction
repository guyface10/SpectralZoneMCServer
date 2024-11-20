team join players @a[team=glow]
team join glow @s

kill @e[type=armor_stand,tag=glowingOrb]

title @s times 0 40 20
title @s title ""
title @s subtitle "You are now glowing!"

scoreboard players set @a glowTimer 0

effect clear @a[team=players] glowing
effect give @s glowing 999999 255 true

item replace entity @s armor.head with carved_pumpkin{HideFlags:63,Enchantments:[{lvl:1s,id:"binding_curse"}],display:{Name:'{"text":""}'},GameItem:1b,AttributeModifiers:[{UUID:[I;382043435,1504528542,-1610182816,-965181141],Amount:0.05d,Slot:"head",AttributeName:"generic.movement_speed",Amplifier:0,Name:"killstreak"}]}

xp set @s 16 levels
scoreboard players set @s railgunCooldown 20
xp set @s 20 points
xp set @s 0 levels

particle end_rod ~ ~1 ~ 0.2 0.3 0.2 0.1 8 normal