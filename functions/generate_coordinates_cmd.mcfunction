# Declare XYZ for showing coordinates
execute as @a [tag=!cmd] at @s run scoreboard objectives add x dummy x
execute as @a [tag=!cmd] at @s run scoreboard objectives add y dummy y
execute as @a [tag=!cmd] at @s run scoreboard objectives add z dummy z

# Disable command block output
gamerule commandblockoutput false
gamerule showcoordinates false

# Disable red arrows
# gamerule showtags false

# Generate command block structure at XYZ
execute as @a [tag=!cmd] at @s run structure load cmd 100000 100 100000

# Add ticking area for cmd on XYZ
execute as @a [tag=!cmd] at @s run tickingarea add 100000 99 99999 100000 119 100003 cmd

# Stopping cmd from being generated continuously
tag @a [tag=!cmd] add cmd

# Show the coordinates on actionbar for player who hold Coordinates item
execute as @a[Hasitem={location=slot.weapon.mainhand,item=bedrock_perfected:coordinates}] run titleraw @s actionbar {"rawtext":[{"text":"§cX§r:§e"},{"score":{"name":"@s","objective":"x"}},{"text":", §aY§r:§e"},{"score":{"name":"@s","objective":"y"}},{"text":", §bZ§r:§e"},{"score":{"name":"@s","objective":"z"}}]}