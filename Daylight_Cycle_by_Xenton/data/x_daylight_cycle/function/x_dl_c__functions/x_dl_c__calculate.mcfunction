## One cycle is over position set to 0
execute if score _position_x_1000 x_dl_c.CustomDaylightCycle matches 24000000.. run scoreboard players set _position_x_1000 x_dl_c.CustomDaylightCycle 0

## Check is day or night, then use the correct value
execute if score _position_x_1000 x_dl_c.CustomDaylightCycle matches ..12000000 store result score _step x_dl_c.CustomDaylightCycle run data get storage x_dl_c.daylightcycle:values data.steps.day
execute if score _position_x_1000 x_dl_c.CustomDaylightCycle matches 12000001.. store result score _step x_dl_c.CustomDaylightCycle run data get storage x_dl_c.daylightcycle:values data.steps.night

## Add step to position
scoreboard players operation _position_x_1000 x_dl_c.CustomDaylightCycle += _step x_dl_c.CustomDaylightCycle

## Write new position value in data storage
execute store result storage x_dl_c.daylightcycle:values data.position int 0.001 run scoreboard players get _position_x_1000 x_dl_c.CustomDaylightCycle

## set time with new position data
function x_daylight_cycle:x_dl_c__functions/x_dl_c__set_time with storage x_dl_c.daylightcycle:values data

## Debug
# tellraw @a "Debug: cal"

