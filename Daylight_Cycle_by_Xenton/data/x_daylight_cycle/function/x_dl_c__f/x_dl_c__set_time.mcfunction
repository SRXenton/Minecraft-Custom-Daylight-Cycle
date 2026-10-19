### Set time on base from calculated position
### Called in: f/x_dl_c__calculate.mcfunction

$time of minecraft:overworld set $(position)

## Debug
# $tellraw @a "Debug: set_time: $(position)"

return 1

