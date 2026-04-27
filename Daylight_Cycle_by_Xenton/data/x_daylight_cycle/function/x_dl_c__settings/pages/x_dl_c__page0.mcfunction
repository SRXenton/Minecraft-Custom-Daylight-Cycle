### Page Start

## Scoreboard
scoreboard players enable @s x_dl_c.CustomDaylightCycleP

## Dialog window
$dialog show @s {\
    type:"minecraft:multi_action",\
    pause:false,\
    can_close_with_escape:true,\
    columns:1,\
    title:"Settings",\
    body:[\
        {\
            type:"minecraft:plain_message",\
            contents:{\
                text:"Actual values in realtime minutes"\
            }\
        },\
        {\
            type:"minecraft:plain_message",\
            contents:{\
                text:"Day: $(day)"\
            }\
        },\
        {\
            type:"minecraft:plain_message",\
            contents:{\
                text:"Night: $(night)"\
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
                text:"Change settings:"\
            }\
        }\
    ],\
    actions:[\
        {label:"DAY",action:{type:"minecraft:run_command",command:"trigger x_dl_c.CustomDaylightCycleP set 10"}},\
        {label:"NIGHT",action:{type:"minecraft:run_command",command:"trigger x_dl_c.CustomDaylightCycleP set 20"}},\
    ],\
    exit_action:{label:"Close",action:{type:"minecraft:run_command",command:"trigger x_dl_c.CustomDaylightCycleP set 1"}}\
}

