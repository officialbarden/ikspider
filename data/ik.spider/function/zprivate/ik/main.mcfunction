# Tags:
# target = ik.spider_armature.target

scoreboard players operation #ID ik.spider.armature_ID = @s ik.spider.armature_ID
scoreboard players operation #ID ik.spider_ID = @s ik.spider_ID

#> More Spider-Like Legs:
execute as @e[tag=ik.spider_armature,predicate=ik.spider:id/segment] at @s facing entity @n[tag=ik.spider_armature.target,predicate=ik.spider:id/segment] feet rotated ~ -45 run rotate @s ~ ~

#> Part 1
#> Segment 2
execute at @n[tag=ik.spider_armature.target,predicate=ik.spider:id/segment] run tp @n[tag=ik.spider_armature.segment_2,predicate=ik.spider:id/segment] ~ ~ ~
execute at @n[tag=ik.spider_armature.segment_1,predicate=ik.spider:id/segment] positioned ^ ^ ^3 as @n[tag=ik.spider_armature.segment_2,predicate=ik.spider:id/segment] run rotate @s facing ~ ~ ~
#> Segment 1
execute as @n[tag=ik.spider_armature.segment_2,predicate=ik.spider:id/segment] at @s positioned ^ ^ ^3 run tp @n[tag=ik.spider_armature.segment_1,predicate=ik.spider:id/segment] ~ ~ ~
execute at @n[tag=ik.spider_armature.body,predicate=ik.spider:id/segment] positioned ^ ^ ^3 as @n[tag=ik.spider_armature.segment_1,predicate=ik.spider:id/segment] run rotate @s facing ~ ~ ~
#> Segment_Body
execute as @n[tag=ik.spider_armature.segment_1,predicate=ik.spider:id/segment] at @s positioned ^ ^ ^3 run tp @n[tag=ik.spider_armature.body,predicate=ik.spider:id/segment] ~ ~ ~
execute at @n[tag=ik.spider_body,predicate=ik.spider:id/body] run rotate @s facing ~ ~ ~


#> Part 2
# Segment_Body
execute as @n[tag=ik.spider_armature.body,predicate=ik.spider:id/segment] at @n[tag=ik.spider_body,predicate=ik.spider:id/body] run tp @s ~ ~ ~
execute as @n[tag=ik.spider_armature.segment_1,predicate=ik.spider:id/segment] at @s positioned ^ ^ ^3 rotated ~180 ~ run rotate @n[tag=ik.spider_armature.body,predicate=ik.spider:id/segment] facing ~ ~ ~
#> Segment_Body Constraints
execute as @e[tag=ik.spider_armature.body,predicate=ik.spider:id/segment] at @s run function ik.spider:zprivate/ik/constraints/main

# Segment 1
execute as @n[tag=ik.spider_armature.body,predicate=ik.spider:id/segment] at @s positioned ^ ^ ^3 run tp @n[tag=ik.spider_armature.segment_1,predicate=ik.spider:id/segment] ~ ~ ~
execute as @n[tag=ik.spider_armature.segment_2,predicate=ik.spider:id/segment] at @s positioned ^ ^ ^3 run rotate @n[tag=ik.spider_armature.segment_1,predicate=ik.spider:id/segment] facing ~ ~ ~ 
#> Segment 1 Constraints
execute as @e[tag=ik.spider_armature.segment_1,predicate=ik.spider:id/segment] at @s run function ik.spider:zprivate/ik/constraints/main

# Segment 2
execute as @n[tag=ik.spider_armature.segment_1,predicate=ik.spider:id/segment] at @s positioned ^ ^ ^3 run tp @n[tag=ik.spider_armature.segment_2,predicate=ik.spider:id/segment] ~ ~ ~
execute as @n[tag=ik.spider_armature.segment_2,predicate=ik.spider:id/segment] at @s run rotate @s facing entity @n[tag=ik.spider_armature.target,predicate=ik.spider:id/segment]
#> Segment 2 Constraints
execute as @e[tag=ik.spider_armature.segment_2,predicate=ik.spider:id/segment] at @s run function ik.spider:zprivate/ik/constraints/main
