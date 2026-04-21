## Automatic init
execute unless data storage x_dl_c.daylightcycle:values {is_active:1} run function x_daylight_cycle:c_dl_c_functions/x_dl_c__init_custom_daylight_cycle

## Run when daylight cycle is initialized and not in pause
execute if score #run x_dl_c.CustomDaylightCycle matches 1 if data storage x_dl_c.daylightcycle:values {is_active:1} run function x_daylight_cycle:c_dl_c_functions/x_dl_c__calculate
