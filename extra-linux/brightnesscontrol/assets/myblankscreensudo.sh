#!/bin/bash

# fix permission: xhost +local:
# xhost +local:


# Set the time threshold for dimming the screen (in milliseconds)
export DISPLAY=:0
FIRST_THRESHOLD=300000  # 300000 is 5 minutes
SECOND_THRESHOLD=600000
THIRD_THRESHOLD=900000

# get display names with this command: xrandr
PRIMARY_DISPLAY="HDMI-0"
SECOND_DISPLAY="eDP-1-1"


while true; do
    
    # Run pgrep command and capture the output
    pgrep_output=$(pgrep -f "caffeine")
    # Count the number of lines in the output
    num_processes=$(echo "" | wc -l)

    read -r CURRENT_BRIGHTNESS < "/home/alex/brightnesscontrol/assets/brightness"

    # Get the idle time in milliseconds
    IDLE=$(xprintidle)

    # If idle time exceeds threshold, dim the screen
    if [ "$num_processes" -ne 2 ] && [ $IDLE -gt $FIRST_THRESHOLD ] && [ $IDLE -lt $SECOND_THRESHOLD ]; then
        # Example: xrandr --output <output> --brightness <value>
        ddcutil -d 1 setvcp 10 50
    elif [ "$num_processes" -ne 2 ] && [ $IDLE -gt $SECOND_THRESHOLD ] && [ $IDLE -lt $THIRD_THRESHOLD ]; then
        ddcutil -d 1 setvcp 10 10
    elif [ "$num_processes" -ne 2 ] && [ $IDLE -gt $THIRD_THRESHOLD ]; then
        ddcutil -d 1 setvcp 10 0
    else
        # Restore normal brightness
        ddcutil -d 1 setvcp 10 $CURRENT_BRIGHTNESS
    fi

    # Check every minute
    sleep 10
done
