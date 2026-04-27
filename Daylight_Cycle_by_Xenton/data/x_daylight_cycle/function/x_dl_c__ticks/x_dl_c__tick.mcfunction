## Automatic init
execute unless data storage x_dl_c.daylightcycle:values {is_active:1} run function x_daylight_cycle:x_dl_c__functions/x_dl_c__init_custom_daylight_cycle
execute unless data storage x_dl_c.daylightcycle:values {data:{time:{}}} run function x_daylight_cycle:x_dl_c__functions/x_dl_c__calculate_misc1


## Run when daylight cycle is initialized and not in pause
execute if score #run x_dl_c.CustomDaylightCycle matches 1 if data storage x_dl_c.daylightcycle:values {is_active:1} run function x_daylight_cycle:x_dl_c__functions/x_dl_c__calculate


## Settingpages
execute as @a[scores={x_dl_c.CustomDaylightCycleP=11,x_dl_c.CustomDaylightCycleV=1..}] run function x_daylight_cycle:x_dl_c__functions/x_dl_c__calculate_misc2
execute as @a[scores={x_dl_c.CustomDaylightCycleP=21,x_dl_c.CustomDaylightCycleV=1..}] run function x_daylight_cycle:x_dl_c__functions/x_dl_c__calculate_misc2

execute as @a[scores={x_dl_c.CustomDaylightCycleP=10}] run function x_daylight_cycle:x_dl_c__settings/pages/x_dl_c__page10 with storage x_dl_c.daylightcycle:values data.time
execute as @a[scores={x_dl_c.CustomDaylightCycleP=20}] run function x_daylight_cycle:x_dl_c__settings/pages/x_dl_c__page20 with storage x_dl_c.daylightcycle:values data.time

execute as @a[scores={x_dl_c.CustomDaylightCycleP=1}] run function x_daylight_cycle:x_dl_c__functions/x_dl_c__resets
