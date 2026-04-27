## From Scoreboard to data and call function on base day or night

## Write in data storage from dcoreboard
execute store result storage x_dl_c.daylightcycle:values data.temp.time int 1 run scoreboard players get @s x_dl_c.CustomDaylightCycleV

## Call function, base in day or night, with time value
execute if score @s x_dl_c.CustomDaylightCycleW matches 10 run function x_daylight_cycle:x_dl_c__settings/x_dl_c__set_time_for_day with storage x_dl_c.daylightcycle:values data.temp
execute if score @s x_dl_c.CustomDaylightCycleW matches 20 run function x_daylight_cycle:x_dl_c__settings/x_dl_c__set_time_for_night with storage x_dl_c.daylightcycle:values data.temp

## Reset
data remove storage x_dl_c.daylightcycle:values data.temp
scoreboard players set @s x_dl_c.CustomDaylightCycleP 1
