# Minecraft-Custom-Daylight-Cycle
Datapack for Minecraft to override the ingame daylight cycle, to make it possible, to have own time for night and day. Example: 30min day and 5min night

# Installation:
Put this datapack in your savegame, in the folder datapacks<br>
After reload /reload our world, you can check is the datapack available with the command: /datapack list.<br>
When you finde in green brackets: [file/Daylight_Cycle_by_xenton (world)], than the datapack is correct installed<br>
You don't need to do anything to initalise this datapack, it will be run automaticly after correct install.<br>

# Run:
The gamerule advance_time will be not changed, the position off the sun and moon, will be overitten by the datapack.<br>
For settings, you have 4 option, set time for day length, in real minutes, set time for night length, in real minutes, set datapack pause, set datapack resume<br>
    Commands:<br>
        /function x_daylight_cycle:x_dl_c__pause -- Paused the calculation from the sun/moon position. The ingame calculation overtaken, when is not disabled<br>
        /function x_daylight_cycle:x_dl_c__resume -- Restart the calculation from the sun/moon position. The ingame calculation will overitten by datapack again<br>
        /function x_daylight_cycle:x_dl_c_settings/x_dl_c__set_time_for_day {time:value} -- Set the time length for sun is up in real time minutes<br>
        /function x_daylight_cycle:x_dl_c_settings/x_dl_c__set_time_for_night {time:value} -- Set the time length for moon is up in real time minutes<br>
        Note: Replace value only with integer, example 1,2,3,...,1000<br>
    There are predefined positions for sun and moon<br>
    Commands:<br>
        /function x_daylight_cycle:x_dl_c__set_day -- Set the sun on position after sunrise (Tick: 0)<br>
        /function x_daylight_cycle:x_dl_c__set_night -- Set the moon on the position after sundown (Tick: 13000)<br>
        /function x_daylight_cycle:x_dl_c__set_sunrise -- Set the sun, before the sun is rising (Tick: 22900)<br>
        /function x_daylight_cycle:x_dl_c__set_sundown -- Set the sun, before the sun go down and the moon is rising (Tick: 12000)<br>






# Changelog:
V xx<br>
- Testing:<br>
-- V 26.1 - run<br>
-- V 26.1.1 - run<br>

- New folder structure<br>

- New Function: pause  
-- Turn off the sun/moon stand calculation, it will overtaken from ingame calculation<br>
-- Command:<br>
-- /function x_daylight_cycle:x_dl_c__pause<br>

- New Function: resume <br>
-- Turn on the sun/moon stand calculation, it will overtaken from datapack calculation<br>
-- Command:<br>
-- /function x_daylight_cycle:x_dl_c__resume<br>

- New Function: set day <br>
-- Set the sun position on start of the day (Tick: 0)<br>
-- Command:<br>
-- /function x_daylight_cycle:x_dl_c__set_day<br>

- New Function: set night <br>
-- Set the sun position on start of the night, moon is rising (Tick: 13000)<br>
-- Command:<br>
-- /function x_daylight_cycle:x_dl_c__set_night<br>

- New Function: set sunrise <br>
-- Set the sun position before the day starts, sun is rising (Tick: 22900)<br>
-- Command:<br>
-- /function x_daylight_cycle:x_dl_c__set_sunrise<br>

- New Function: set sundown<br>
-- Set the sun position on end of the day (Tick: 12000)<br>
-- Command:<br>
-- /function x_daylight_cycle:x_dl_c__set_sundown<br>

- New Function: set time for day <br>
-- Set the length of the time in real minutes for day<br>
-- value = integer, example: 1,2,3,....,1000<br>
-- Command:<br>
-- /function x_daylight_cycle:x_dl_c_settings/x_dl_c__set_time_for_day {time:value}<br>

- New Function: set time for night<br>
-- Set the length of the time in real minutes for night<br>
-- value = integer, example: 1,2,3,....,1000<br>
-- Command:<br>
-- /function x_daylight_cycle:x_dl_c_settings/x_dl_c__set_time_for_night {time:value}<br>
