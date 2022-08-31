#!/bin/sh


# Notifications
sh /home/simon/.config/dunst/dunst.sh &

# Set wallpaper
feh --bg-fill  --randomize ~/Pictures/walls --bg-fill --randomize ~/Pictures/walls

# set external display
xrandr --output HDMI1 --auto --right-of eDP1 
xrandr --output DP1 --auto --left-of eDP1 


pkill xmousepasteblock && xmousepasteblock &


