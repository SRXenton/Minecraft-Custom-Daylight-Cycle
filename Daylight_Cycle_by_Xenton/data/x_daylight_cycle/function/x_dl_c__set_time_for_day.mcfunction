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

$function x_daylight_cycle:x_dl_c__calculate_time {time:$(time), where:"day"}
