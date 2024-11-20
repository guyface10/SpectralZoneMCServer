summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["ray.slab"]}
execute store result score slab rayData run data get entity @e[type=area_effect_cloud,tag=ray.slab,limit=1] Pos[1] 100
execute align y run tp @e[type=area_effect_cloud,tag=ray.slab,limit=1] ~ ~ ~
execute store result score slab_aligned rayData run data get entity @e[type=area_effect_cloud,tag=ray.slab,limit=1] Pos[1] 100
scoreboard players operation slab_height rayData = slab rayData
scoreboard players operation slab_height rayData -= slab_aligned rayData
kill @e[type=area_effect_cloud,tag=ray.slab,limit=1]

execute if score limit rayData matches 1..400 if block ~ ~ ~ #minecraft:slabs[type=bottom] if score slab_height rayData matches 51.. run function game:railgun/ray
execute if score limit rayData matches 1..400 if block ~ ~ ~ #minecraft:slabs[type=top] if score slab_height rayData matches ..50 run function game:railgun/ray