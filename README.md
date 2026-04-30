# Minecraft-Custom-Daylight-Cycle
Datapack for Minecraft to override the ingame daylight cycle, to make it possible, to have own time for night and day. Example: 30min day and 5min night

# Installation:
- Put this datapack in your savegame, in the folder datapacks<br>
- - Example: .minecraft - saves - YourWorld - datapacks - Daylight_Cycle_by_Xenton...<br>

- After reload with command "/reload" our world, you can check is the datapack available with the command "/datapack list".<br>
    From Github as folder:<br>
        When you finde in green brackets: [file/Daylight_Cycle_by_xenton (world)], than the datapack is correct installed<br>
    From Curseforge as ZIP: https://www.curseforge.com/minecraft/data-packs/custom-daylight-cycle<br>
         When you find in green brackets: [file/Custom_Daylight_Cycle_26-4-0.zip (world)], than the datapack is correct installed.<br>
- You don't need to do anything to initalise this datapack, it will be run automaticly after correct install.<br>

# Run:
- The gamerule advance_time will be not changed, only the position off the sun and moon, will be overitten by the datapack.<br>
- For settings, you have 3 options: set datapack pause, set datapack resume and for settings window<br>
    Commands:<br>
        /function x_daylight_cycle:x_dl_c__settings -- Settingwindow (Since 26.x.x)<br>
        /function x_daylight_cycle:x_dl_c__pause -- Paused the calculation from the sun/moon position. The ingame calculation overtaken, when is not disabled<br>
        /function x_daylight_cycle:x_dl_c__resume -- Restart the calculation from the sun/moon position. The ingame calculation will overitten by datapack again<br>
        <br>
    There are predefined positions for sun and moon<br>
    Commands:<br>
        /function x_daylight_cycle:x_dl_c__set_day -- Set the sun on position after sunrise (Tick: 0)<br>
        /function x_daylight_cycle:x_dl_c__set_night -- Set the moon on the position after sundown (Tick: 13000)<br>
        /function x_daylight_cycle:x_dl_c__set_sunrise -- Set the sun, before the sun is rising (Tick: 22900)<br>
        /function x_daylight_cycle:x_dl_c__set_sundown -- Set the sun, before the sun go down and the moon is rising (Tick: 12000)<br>
<br>

# Old Settings:
- This settings are still available, since BETA, but not so usefull.<br>
- Values possible 1 to 1000 or Greater and only integer, like example 1,2,3,...,1000<br>
- - Note for all Versions: Values greater than 1000 can't calculate correctly<br>
- - Note until 26.4.0: no check exist for wrong values<br>
- - Note since 26.x.x: Check exist, and give text output<br>
- - Commands:<br>
- - - /function x_daylight_cycle:x_dl_c_settings/x_dl_c__set_time_for_day {time:value} -- Set the time length for sun is up in real time minutes<br>
- - - /function x_daylight_cycle:x_dl_c_settings/x_dl_c__set_time_for_night {time:value} -- Set the time length for moon is up in real time minutes<br>

# ===========================================================================================<br>



# Changelog:
26.x.x<br>
- Testing:<br>
-- V 26.1.1<br>

- New Settings-Window<br>
-- Settingwindow for settings Day and Night<br>
-- Command:<br>
-- /function x_daylight_cycle:x_dl_c__settings<br>

- New check is value lesser 1, when using /function x_daylight_cycle:x_dl_c_settings/x_dl_c__set_time_for_day {time:value} and /function x_daylight_cycle:x_dl_c_settings/x_dl_c__set_time_for_night {time:value}, than give a text output and changed nothing.<br>

- New chat text outputs:<br>
-- After initialisation: "Datapack: Custom Daylight-Cycle by Xenton is initialised"<br>
-- After correct change day: "Datapack: Custom Daylight-Cycle by Xenton : Value for DAY is changed"<br>
-- After correct change night: "Datapack: Custom Daylight-Cycle by Xenton : Value for NIGHT is changed"<br>
-- After not correct value: "Datapack: Custom Daylight-Cycle by Xenton : Value is lesser than 1 !!!"<br>

- New check for init, all needed variables are active, when not, datapack will be new initialistion<br>
<br>
<br>

BETA to 26.4.0<br>
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
