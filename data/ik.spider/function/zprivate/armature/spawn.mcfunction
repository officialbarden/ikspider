# macros:
# $(direction)


# Tags:
# new_ik.spider -> entities with this id share an id with the spider body itself. (ik.spider_ID)
# ik.spider_armature, new -> entities with this id share an id with the leg segments themselves. (ik.spider.armature_ID)


# length = 3
$summon minecraft:block_display ~ ~ ~ {Tags:["ik.spider_armature.direction.$(direction)","ik.spider_armature.body","ik.spider_armature",new, new_ik.spider], block_state: {Name: "minecraft:spruce_fence", Properties: {east: "false", south: "false", south: "false", waterlogged: "false", west: "false"}}, transformation: {left_rotation: [0.70090926f, 0.0f, 0.0f, 0.7132505f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0000001f, 3f, 1.0000001f], translation: [-0.5f, 0.5f, 0.0f]}}
$summon minecraft:block_display ~ ~ ~ {Tags:["ik.spider_armature.direction.$(direction)","ik.spider_armature.segment_1","ik.spider_armature",new], block_state: {Name: "minecraft:spruce_fence", Properties: {east: "false", south: "false", south: "false", waterlogged: "false", west: "false"}}, transformation: {left_rotation: [0.70090926f, 0.0f, 0.0f, 0.7132505f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0000001f, 3f, 1.0000001f], translation: [-0.5f, 0.5f, 0.0f]}}
$summon minecraft:block_display ~ ~ ~ {Tags:["ik.spider_armature.direction.$(direction)","ik.spider_armature.segment_2","ik.spider_armature",new], block_state: {Name: "minecraft:spruce_fence", Properties: {east: "false", south: "false", south: "false", waterlogged: "false", west: "false"}}, transformation: {left_rotation: [0.70090926f, 0.0f, 0.0f, 0.7132505f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0000001f, 3f, 1.0000001f], translation: [-0.5f, 0.5f, 0.0f]}}

execute as @e[tag=ik.spider_armature,tag=new] run data modify entity @s teleport_duration set value 2

#> Target and Step Space Markers
$summon marker ~ ~ ~ {data:{name:"$(direction) Target"},Tags:["ik.spider_armature.direction.$(direction)","ik.spider_armature.target","ik.spider_armature","new"]}
$summon marker ~ ~ ~ {data:{name:"$(direction) Step Space"},Tags:["ik.spider_armature.direction.$(direction)","ik.spider_armature.target.step_space","ik.spider_armature","new", "new_ik.spider"]}

#> Target Marker: This is where the Last Segment Reaches For.
tp @n[tag=ik.spider_armature.body,tag=ik.spider_armature] @n[tag=ik.spider_body,tag=new_ik.spider]

#> ID system for Armatures.
scoreboard players operation @e[tag=new,tag=ik.spider_armature] ik.spider.armature_ID = .global ik.spider.armature_ID
scoreboard players add .global ik.spider.armature_ID 1
tag @e[tag=ik.spider_armature,tag=new] remove new

#> Remove Extra Tags:
tag @e[tag=ik.spider_armature.target] remove ik.spider_armature
tag @e[tag=ik.spider_armature.target.step_space] remove ik.spider_armature

