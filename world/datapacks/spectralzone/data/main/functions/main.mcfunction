execute if score inGame gameData matches 0 run function lobby:main
execute if score inGame gameData matches 1 run function game:main

execute as @e[type=item_frame,nbt=!{ItemRotation:2b}] run data modify entity @s ItemRotation set value 2b

execute if score inGame gameData matches 0 run effect give @a[gamemode=adventure] resistance 999999 255 true
execute if score inGame gameData matches 1 unless score gamemode settings matches 4 run effect give @a[gamemode=adventure] resistance 999999 255 true
effect give @a[gamemode=adventure] saturation 999999 255 true
effect give @a[gamemode=adventure] night_vision 999999 255 true
effect give @a[gamemode=adventure] weakness 999999 255 true

execute at @a[gamemode=!spectator,nbt={OnGround:1b}] if block ~ ~-1 ~ #game:boost_pads align xyz run particle dust 0.9 0.7 0.9 2 ~0.5 ~0.1 ~0.5 0.3 0.05 0.3 0 15 force
execute at @a[gamemode=!spectator,nbt={OnGround:1b}] if block ~ ~-1 ~ #game:boost_pads align xyz run playsound entity.firework_rocket.launch voice @a ~ ~ ~ 1 0
execute as @a[gamemode=!spectator,nbt={OnGround:1b},scores={boostPad=-1}] at @s if block ~ ~-1 ~ #game:boost_pads run scoreboard players set @s boostPad 15
effect give @a[scores={boostPad=0..}] levitation 1 22 true
effect clear @a[scores={boostPad=-1}] levitation
scoreboard players remove @a[scores={boostPad=0..}] boostPad 1

execute if score inGame gameData matches 1 unless score gamemode settings matches 4 run effect give @a[gamemode=adventure] invisibility 999999 255 true
clear @a[tag=!spawn,gamemode=adventure,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick"}]}] carrot_on_a_stick
clear @a[tag=!spawn,gamemode=adventure,nbt=!{Inventory:[{id:"minecraft:carved_pumpkin"}]}] carved_pumpkin
clear @a[tag=!spawn,gamemode=adventure,nbt=!{Inventory:[{id:"minecraft:golden_chestplate"}]}] golden_chestplate
clear @a[tag=!spawn,gamemode=adventure,nbt=!{Inventory:[{id:"minecraft:golden_leggings"}]}] golden_leggings
clear @a[tag=!spawn,gamemode=adventure,nbt=!{Inventory:[{id:"minecraft:golden_boots"}]}] golden_boots
item replace entity @a[tag=!spawn,gamemode=adventure,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick"}]}] hotbar.0 with carrot_on_a_stick{display:{Name:'{"text":"Blaster","color":"gray","italic":false}',Lore:['{"text":"Right-Click to shoot","color":"white","italic":false}']},GameItem:1b}
item replace entity @a[tag=!spawn,tag=!p.invisibility,gamemode=adventure,nbt=!{Inventory:[{id:"minecraft:carved_pumpkin",Slot:103b}]}] armor.head with carved_pumpkin{Enchantments:[{id:"binding_curse",lvl:1s}],HideFlags:63,display:{Name:'{"text":""}'},GameItem:1b}
item replace entity @a[tag=!spawn,tag=!p.invisibility,gamemode=adventure,nbt=!{Inventory:[{id:"minecraft:golden_chestplate",Slot:102b}]}] armor.chest with golden_chestplate{Enchantments:[{id:"binding_curse",lvl:1s}],HideFlags:63,display:{Name:'{"text":""}'},GameItem:1b}
item replace entity @a[tag=!spawn,tag=!p.invisibility,gamemode=adventure,nbt=!{Inventory:[{id:"minecraft:golden_leggings",Slot:101b}]}] armor.legs with golden_leggings{Enchantments:[{id:"binding_curse",lvl:1s}],HideFlags:63,display:{Name:'{"text":""}'},GameItem:1b}
item replace entity @a[tag=!spawn,tag=!p.invisibility,gamemode=adventure,nbt=!{Inventory:[{id:"minecraft:golden_boots",Slot:100b}]}] armor.feet with golden_boots{Enchantments:[{id:"binding_curse",lvl:1s}],HideFlags:63,display:{Name:'{"text":""}'},GameItem:1b}
kill @e[type=item,nbt={Item:{tag:{GameItem:1b}}}]

execute as @a[gamemode=spectator] at @s if entity @a[gamemode=!spectator,distance=..0.01,limit=1] run title @s actionbar [{"text":"Spectating: ","bold":true},{"selector":"@a[gamemode=!spectator,distance=..1,limit=1]","color":"white"}]