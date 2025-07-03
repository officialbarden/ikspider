scoreboard players operation #ID ik.spider.armature_ID = @s ik.spider.armature_ID
scoreboard players operation #ID ik.spider_ID = @s ik.spider_ID

execute rotated ~ ~-1 run tp @n[tag=ik.spider_armature.segment_1,predicate=ik.spider:id/segment] ^ ^ ^3
execute as @n[tag=ik.spider_armature.segment_1,predicate=ik.spider:id/segment] at @s rotated ~ ~-1 run tp @n[tag=ik.spider_armature.segment_2,predicate=ik.spider:id/segment] ^ ^ ^3
ride @s mount @n[tag=ik.spider_body,predicate=ik.spider:id/body]

