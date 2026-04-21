## Disable ingame daylight cycle 
# gamerule advance_time false

## Remove and Add scoreboard for custom daylight cycle
scoreboard objectives remove x_dl_c.CustomDaylightCycle
scoreboard objectives add x_dl_c.CustomDaylightCycle dummy "Custom Daylight Cycle by Xenton"

## Remove and Add data storage with default values
data remove storage x_dl_c.daylightcycle:values data
data merge storage x_dl_c.daylightcycle:values {data:{steps:{day:1000,night:10000},position:0},is_active:1}

## Add in scoreboard default values
scoreboard players set _position_x_1000 x_dl_c.CustomDaylightCycle 0
scoreboard players set #run x_dl_c.CustomDaylightCycle 1

## Debug
scoreboard objectives setdisplay sidebar x_dl_c.CustomDaylightCycle