## Calculation to steps:
## First:
## 12000 * time / 10 = y
##
## Second:
## 12000 * 1000 / y = steps
##
##
## Realistic values for time:
## Values between 1 minutes and 1000
## All values over 1000, the calculation not accurate

## Overtaken marco value in scoreboard
$scoreboard players set #time x_dl_c.CustomDaylightCycle $(time)

## Definied calculation standard values in scoreboard
scoreboard players set #12000 x_dl_c.CustomDaylightCycle 12000
scoreboard players set #1000 x_dl_c.CustomDaylightCycle 1000
scoreboard players set #10 x_dl_c.CustomDaylightCycle 10
scoreboard players set #temp1 x_dl_c.CustomDaylightCycle 0
scoreboard players set #temp2 x_dl_c.CustomDaylightCycle 0

## First calculation step
scoreboard players operation #temp1 x_dl_c.CustomDaylightCycle = #12000 x_dl_c.CustomDaylightCycle
scoreboard players operation #temp1 x_dl_c.CustomDaylightCycle *= #time x_dl_c.CustomDaylightCycle
scoreboard players operation #temp1 x_dl_c.CustomDaylightCycle /= #10 x_dl_c.CustomDaylightCycle

## Secound calculation step
scoreboard players operation #temp2 x_dl_c.CustomDaylightCycle = #12000 x_dl_c.CustomDaylightCycle
scoreboard players operation #temp2 x_dl_c.CustomDaylightCycle *= #1000 x_dl_c.CustomDaylightCycle
scoreboard players operation #temp2 x_dl_c.CustomDaylightCycle /= #temp1 x_dl_c.CustomDaylightCycle

## Write scoreboard value for steps in data storage
$execute store result storage x_dl_c.daylightcycle:values data.steps.$(where) int 1 run scoreboard players get #temp2 x_dl_c.CustomDaylightCycle
