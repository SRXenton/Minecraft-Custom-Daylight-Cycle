# Minecraft-Custom-Daylight-Cycle
Datapack for Minecraft to override the ingame daylight cycle, to make it possible, to have own time for night and day. Example: 30min day and 5min night



# Updates:
V xx
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
