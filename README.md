# Minecraft-Custom-Daylight-Cycle
Datapack for Minecraft to override the ingame daylight cycle, to make it possible, to have own time for night and day. Example: 30min day and 5min night

Installation:
    Put this datapack in your savegame, in the folder datapacks
    After reload /reload our world, you can check is the datapack available with the command: /datapack list.
        When you finde in green brackets: [file/Daylight_Cycle_by_xenton (world)], than the datapack is correct installed
    You don't need to do anything to initalise this datapack, it will be run automaticly after correct install.

Run:
    The gamerule advance_time will be not changed, the position off the sun and moon, will be overitten by the datapack.
    For settings, you have 4 option, set time for day length, in real minutes, set time for night length, in real minutes, set datapack pause, set datapack resume
    Commands:
        /function x_daylight_cycle:x_dl_c__pause -- Paused the calculation from the sun/moon position. The ingame calculation overtaken, when is not disabled
        /function x_daylight_cycle:x_dl_c__resume -- Restart the calculation from the sun/moon position. The ingame calculation will overitten by datapack again
        /function x_daylight_cycle:x_dl_c_settings/x_dl_c__set_time_for_day {time:value} -- Set the time length for sun is up in real time minutes
        /function x_daylight_cycle:x_dl_c_settings/x_dl_c__set_time_for_night {time:value} -- Set the time length for moon is up in real time minutes
        Note: Replace value only with integer, example 1,2,3,...,1000
    There are predefined positions for sun and moon
    Commands:
        /function x_daylight_cycle:x_dl_c__set_day -- Set the sun on position after sunrise (Tick: 0)
        /function x_daylight_cycle:x_dl_c__set_night -- Set the moon on the position after sundown (Tick: 13000)
        /function x_daylight_cycle:x_dl_c__set_sunrise -- Set the sun, before the sun is rising (Tick: 22900)
        /function x_daylight_cycle:x_dl_c__set_sundown -- Set the sun, before the sun go down and the moon is rising (Tick: 12000)






# Changelog:
V xx
- Testing:
-- V 26.1 - run
-- V 26.1.1 - run

- New folder structure

- New Function: pause  
-- Turn off the sun/moon stand calculation, it will overtaken from ingame calculation
-- Command:
-- /function x_daylight_cycle:x_dl_c__pause

- New Function: resume 
-- Turn on the sun/moon stand calculation, it will overtaken from datapack calculation
-- Command:
-- /function x_daylight_cycle:x_dl_c__resume

- New Function: set day 
-- Set the sun position on start of the day (Tick: 0)
-- Command:
-- /function x_daylight_cycle:x_dl_c__set_day

- New Function: set night 
-- Set the sun position on start of the night, moon is rising (Tick: 13000)
-- Command:
-- /function x_daylight_cycle:x_dl_c__set_night

- New Function: set sunrise 
-- Set the sun position before the day starts, sun is rising (Tick: 22900)
-- Command:
-- /function x_daylight_cycle:x_dl_c__set_sunrise

- New Function: set sundown
-- Set the sun position on end of the day (Tick: 12000)
-- Command:
-- /function x_daylight_cycle:x_dl_c__set_sundown

- New Function: set time for day 
-- Set the length of the time in real minutes for day
-- value = integer, example: 1,2,3,....,1000
-- Command:
-- /function x_daylight_cycle:x_dl_c_settings/x_dl_c__set_time_for_day {time:value}

- New Function: set time for night
-- Set the length of the time in real minutes for night
-- value = integer, example: 1,2,3,....,1000
-- Command:
-- /function x_daylight_cycle:x_dl_c_settings/x_dl_c__set_time_for_night {time:value}
