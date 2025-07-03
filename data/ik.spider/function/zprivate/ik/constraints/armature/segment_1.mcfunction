execute store result score .x ik.spider run data get entity @s Rotation[0]
execute store result score .y ik.spider run data get entity @s Rotation[1]

execute if score .y ik.spider matches ..40 run rotate @s ~ 40
execute if score .y ik.spider matches 60.. run rotate @s ~ 60

