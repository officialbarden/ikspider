scoreboard players operation #ID ik.spider_ID = @s ik.spider_ID


execute positioned ^1 ^-2 ^4 run tp @n[predicate=ik.spider:id/body,tag=ik.spider_armature.direction.north_left,tag=ik.spider_armature.target.step_space] ~ ~ ~
execute positioned ^-1 ^-2 ^4 run tp @n[predicate=ik.spider:id/body,tag=ik.spider_armature.direction.north_right,tag=ik.spider_armature.target.step_space] ~ ~ ~
execute rotated ~-35 0 positioned ^ ^-2 ^4 run tp @n[predicate=ik.spider:id/body,tag=ik.spider_armature.direction.north_west,tag=ik.spider_armature.target.step_space] ~ ~ ~
execute rotated ~75 0 positioned ^ ^-2 ^4 run tp @n[predicate=ik.spider:id/body,tag=ik.spider_armature.direction.north_east,tag=ik.spider_armature.target.step_space] ~ ~ ~

execute positioned ^1 ^-2 ^4 run tp @n[predicate=ik.spider:id/body,tag=ik.spider_armature.direction.south_left,tag=ik.spider_armature.target.step_space] ~ ~ ~
execute positioned ^-1 ^-2 ^4 run tp @n[predicate=ik.spider:id/body,tag=ik.spider_armature.direction.south_right,tag=ik.spider_armature.target.step_space] ~ ~ ~
execute rotated ~180 ~ rotated ~95 0 positioned ^ ^-2 ^4 run tp @n[predicate=ik.spider:id/body,tag=ik.spider_armature.direction.south_west,tag=ik.spider_armature.target.step_space] ~ ~ ~
execute rotated ~180 ~ rotated ~-115 0 positioned ^ ^-2 ^4 run tp @n[predicate=ik.spider:id/body,tag=ik.spider_armature.direction.south_east,tag=ik.spider_armature.target.step_space] ~ ~ ~



