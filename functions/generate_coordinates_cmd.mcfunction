# Declare XYZ for showing coordinates
execute as @a [tag=!cmd] at @s run scoreboard objectives add x dummy x
execute as @a [tag=!cmd] at @s run scoreboard objectives add y dummy y
execute as @a [tag=!cmd] at @s run scoreboard objectives add z dummy z

# Disable command block output
gamerule commandblockoutput false
gamerule showcoordinates false

# Generate command block structure at XYZ
execute as @a [tag=!cmd] at @s run structure load cmd 100000 100 100000

# Add ticking area for cmd on XYZ
execute as @a [tag=!cmd] at @s run tickingarea add 100000 99 99999 100000 119 100005 cmd

tag @a [tag=!cmd] add cmd