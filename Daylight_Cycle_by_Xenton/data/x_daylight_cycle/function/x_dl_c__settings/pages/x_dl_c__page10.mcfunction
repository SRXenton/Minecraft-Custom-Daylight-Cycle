### Page for NIGHT

## scoreboard
scoreboard players add @s x_dl_c.CustomDaylightCycleP 1
scoreboard players enable @s x_dl_c.CustomDaylightCycleP
scoreboard players enable @s x_dl_c.CustomDaylightCycleV
scoreboard players set @s x_dl_c.CustomDaylightCycleW 10 

## Dialog window
$dialog show @s {\
    type:"minecraft:confirmation",\
    pause:false,\
    can_close_with_escape:true,\
    title:"Settings",\
    body:[\
        {\
            type:"minecraft:plain_message",\
            contents:{\
                text:"Actual value for DAY in realtime minutes: "\
            }\
        },\
        {\
            type:"minecraft:plain_message",\
            contents:{\
                text:"$(day)"\
            }\
        },\
        {\
            type:"minecraft:plain_message",\
            contents:{\
                text:""\
            }\
        },\
        {\
            type:"minecraft:plain_message",\
            contents:{\
                text:"New value:"\
            }\
        }\
    ],\
    inputs:[\
        {key:"v",type:"minecraft:number_range",initial:$(day),label:"",start:1,end:180,step:1}\
    ],\
    yes:{label:"Save",action:{type:"minecraft:dynamic/run_command",template:"trigger x_dl_c.CustomDaylightCycleV set \u0024(v)"}},\
    no:{label:"Close without save",action:{type:"minecraft:run_command",command:"trigger x_dl_c.CustomDaylightCycleP set 1"}}\
}

