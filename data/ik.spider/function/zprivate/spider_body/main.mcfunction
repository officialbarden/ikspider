execute rotated as @n[tag=ik.spider_entity] run rotate @s ~ 0

function ik.spider:zprivate/spider_body/step_space
execute as @e[tag=ik.spider_armature.body,predicate=ik.spider:id/body] at @s run function ik.spider:zprivate/spider_body/target

