### Calculate steps to time in minutes
### Called in: t/x_dl_c__tick.mcfunction

## Calculations:
## y = (12000 * 1000) / (x * 20 * 60)
##
## Day: 
## 12000 * 1000 / steps.day / 20 / 60 = time.day
##
## Night:
## 12000 * 1000 / steps.night / 20 / 60 = time.night
##


# Write values from data storage in scorebord
execute store result score #s_day x_dl_c.CustomDaylightCycle run data get storage x_dl_c.daylightcycle:values data.steps.day
execute store result score #s_night x_dl_c.CustomDaylightCycle run data get storage x_dl_c.daylightcycle:values data.steps.night

# Set dafault values for calculation
scoreboard players set #12000 x_dl_c.CustomDaylightCycle 12000
scoreboard players set #1000 x_dl_c.CustomDaylightCycle 1000
scoreboard players set #20 x_dl_c.CustomDaylightCycle 20
scoreboard players set #60 x_dl_c.CustomDaylightCycle 60

# Calculate time for day
scoreboard players operation #temp1 x_dl_c.CustomDaylightCycle = #12000 x_dl_c.CustomDaylightCycle
scoreboard players operation #temp1 x_dl_c.CustomDaylightCycle *= #1000 x_dl_c.CustomDaylightCycle
scoreboard players operation #temp1 x_dl_c.CustomDaylightCycle /= #s_day x_dl_c.CustomDaylightCycle
scoreboard players operation #temp1 x_dl_c.CustomDaylightCycle /= #20 x_dl_c.CustomDaylightCycle
scoreboard players operation #temp1 x_dl_c.CustomDaylightCycle /= #60 x_dl_c.CustomDaylightCycle

# Write time in data storage
execute store result storage x_dl_c.daylightcycle:values data.time.day int 1 run scoreboard players get #temp1 x_dl_c.CustomDaylightCycle

# Calculate time for night
scoreboard players operation #temp1 x_dl_c.CustomDaylightCycle = #12000 x_dl_c.CustomDaylightCycle
scoreboard players operation #temp1 x_dl_c.CustomDaylightCycle *= #1000 x_dl_c.CustomDaylightCycle
scoreboard players operation #temp1 x_dl_c.CustomDaylightCycle /= #s_night x_dl_c.CustomDaylightCycle
scoreboard players operation #temp1 x_dl_c.CustomDaylightCycle /= #20 x_dl_c.CustomDaylightCycle
scoreboard players operation #temp1 x_dl_c.CustomDaylightCycle /= #60 x_dl_c.CustomDaylightCycle

# Write time in data storage
execute store result storage x_dl_c.daylightcycle:values data.time.night int 1 run scoreboard players get #temp1 x_dl_c.CustomDaylightCycle

# Clear scoreboard
scoreboard players reset #s_day x_dl_c.CustomDaylightCycle
scoreboard players reset #s_night x_dl_c.CustomDaylightCycle
scoreboard players reset #12000 x_dl_c.CustomDaylightCycle
scoreboard players reset #1000 x_dl_c.CustomDaylightCycle
scoreboard players reset #temp1 x_dl_c.CustomDaylightCycle


## Debug 
return 1

