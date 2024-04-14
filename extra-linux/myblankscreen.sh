#!/bin/bash

# fix permission: xhost +local:
xhost +local:

# current brightness
CURRENT_BRIGHTNESS=1.0

# Set the time threshold for dimming the screen (in milliseconds)
export DISPLAY=:0
FIRST_THRESHOLD=300000  # 300000 is 5 minutes
SECOND_THRESHOLD=600000
THIRD_THRESHOLD=700000

# get display names with this command: xrandr
PRIMARY_DISPLAY="HDMI-0"
SECOND_DISPLAY="eDP-1-1"

#LESS_BRIGHTNESS=$((CURRENT_BRIGHTNESS - (CURRENT_BRIGHTNESS / 3)))
#LESS_LESS_BRIGHTNESS=$((CURRENT_BRIGHTNESS / 3))

while true; do
    
    # Run pgrep command and capture the output
    pgrep_output=$(pgrep -f "caffeine")
    # Count the number of lines in the output
    num_processes=$(echo "$pgrep_output" | wc -l)


    # Get the idle time in milliseconds
    IDLE=$(xprintidle)

    # If idle time exceeds threshold, dim the screen
    if [ "$num_processes" -ne 2 ] && [ $IDLE -gt $FIRST_THRESHOLD ] && [ $IDLE -lt $SECOND_THRESHOLD ]; then
        # Example: xrandr --output <output> --brightness <value>
        xrandr --output $PRIMARY_DISPLAY --brightness 0.5
        xrandr --output $SECOND_DISPLAY --brightness 0.5
    elif [ "$num_processes" -ne 2 ] && [ $IDLE -gt $SECOND_THRESHOLD ] && [ $IDLE -lt $THIRD_THRESHOLD ]; then
    	xrandr --output $PRIMARY_DISPLAY --brightness 0.3
    	xrandr --output $SECOND_DISPLAY --brightness 0.3
    elif [ "$num_processes" -ne 2 ] && [ $IDLE -gt $THIRD_THRESHOLD ]; then
	xrandr --output $PRIMARY_DISPLAY --brightness 0.1
	xrandr --output $SECOND_DISPLAY --brightness 0.1
    else
        # Restore normal brightness
        xrandr --output $PRIMARY_DISPLAY --brightness $CURRENT_BRIGHTNESS
        xrandr --output $SECOND_DISPLAY --brightness $CURRENT_BRIGHTNESS
    fi

    # Check every minute
    sleep 5
done

