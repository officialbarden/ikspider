execute store result score .x ik.spider run data get entity @s Rotation[0]
execute store result score .y ik.spider run data get entity @s Rotation[1]

execute if score .y ik.spider matches ..-30 run rotate @s ~ -30
execute if score .y ik.spider matches -80.. run rotate @s ~ -80
    
