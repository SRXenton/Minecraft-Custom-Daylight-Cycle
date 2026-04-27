### Reset

## Return, when wrong entry
execute unless entity @s[scores={x_dl_c.CustomDaylightCycleP=1..}] run return -1

## Call all trigger
trigger x_dl_c.CustomDaylightCycleP set 0
trigger x_dl_c.CustomDaylightCycleV set 0

## Set scoreboards to 0
scoreboard players set @s x_dl_c.CustomDaylightCycleP 0
scoreboard players set @s x_dl_c.CustomDaylightCycleW 0
scoreboard players set @s x_dl_c.CustomDaylightCycleV 0