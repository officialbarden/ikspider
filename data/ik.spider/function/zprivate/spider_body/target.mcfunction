scoreboard players operation #ID ik.spider.armature_ID = @s ik.spider.armature_ID

execute as @e[tag=ik.spider_armature.target,predicate=ik.spider:id/segment] at @s \
    at @n[tag=ik.spider_armature.target.step_space,limit=2,predicate=!ik.spider:id/segment] if entity @n[tag=ik.spider_armature.target,distance=..0.5] \
    run return fail

 
execute as @e[tag=ik.spider_armature.target,predicate=ik.spider:id/segment] at @s \
    unless entity @n[distance=..2,tag=ik.spider_armature.target.step_space,predicate=ik.spider:id/segment] \
    run function ik.spider:zprivate/spider_body/step_update