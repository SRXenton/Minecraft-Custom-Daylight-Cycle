### Set time for lenght day
##
## Setting:
## /function x_daylight_cycle:x_dl_c__set_time_for_day {time:<value>}
## value: time in real minutes, is an integer
##
## Example:
## /function x_daylight_cycle:x_dl_c__set_time_for_day {time:50}
##
## Realistic values for time:
## Values between 1 minutes and 1000
## All values over 1000, the calculation not accurate

$scoreboard players set #temp1 x_dl_c.CustomDaylightCycle $(time)
execute if score #temp1 x_dl_c.CustomDaylightCycle matches ..0 run return -1
scoreboard players reset #temp1 x_dl_c.CustomDaylightCycle 


$data modify storage x_dl_c.daylightcycle:values data.time.night set value $(time)
$function x_daylight_cycle:x_dl_c__functions/x_dl_c__calculate_time {time:$(time), where:"night"}
