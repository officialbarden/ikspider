summon husk ~ ~ ~ {Tags:["ik.spider_entity","new_ik.spider"],Invisible:true}
summon block_display ~ ~ ~ {Tags:["ik.spider_body","new_ik.spider"],block_state: {Name: "minecraft:moss_block"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}

ride @n[tag=ik.spider_body,tag=new_ik.spider] mount @n[tag=ik.spider_entity,tag=new_ik.spider]


function ik.spider:zprivate/armature/spawn {"direction":"north_left"}
function ik.spider:zprivate/armature/spawn {"direction":"north_right"}
function ik.spider:zprivate/armature/spawn {"direction":"north_west"}
function ik.spider:zprivate/armature/spawn {"direction":"north_east"}

function ik.spider:zprivate/armature/spawn {"direction":"south_left"}
function ik.spider:zprivate/armature/spawn {"direction":"south_right"}
function ik.spider:zprivate/armature/spawn {"direction":"south_west"}
function ik.spider:zprivate/armature/spawn {"direction":"south_east"}



scoreboard players operation @e[tag=new_ik.spider] ik.spider_ID = .global ik.spider_ID
scoreboard players add .global ik.spider_ID 1
tag @e[tag=new_ik.spider] remove new_ik.spider