#!/bin/bash

#backlight_dir="/sys/class/backlight/intel_backlight"

# Check if the directory exists
#if [ ! -d "$backlight_dir" ]; then
#    echo "Backlight directory not found"
#    exit 1
#fi

# Read the maximum brightness level
#max_brightness=$(cat "$backlight_dir/max_brightness")

# Set the desired brightness level (between 0 and max_brightness)
#brightness_level=$((max_brightness / 2))  # Set brightness to 50%
#echo "$brightness_level" > "$backlight_dir/brightness"


#export DISPLAY=:0

#xrandr --output HDMI-0 --brightness 0.4
#xrandr --output eDP-1-1 --brightness 1.0

pkill -f "myblankscreen.sh"
bash /home/alex/myblankscreen.sh

