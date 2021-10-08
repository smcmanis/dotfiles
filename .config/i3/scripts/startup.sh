#!/bin/sh


# Notifications
sh /home/simon/.config/dunst/dunst.sh &

# Set wallpaper
feh --bg-fill  --randomize ~/Pictures/walls --bg-fill --randomize ~/Pictures/walls

# Polybar
sh /home/simon/.config/polybar/init.sh &
# Compositor
# pkill picom; picom --no-use-damage &
# sh /home/simon/.config/compton.sh &

xmousepasteblock &

# sleep 3
# Launch workspace 1 - Home
# i3-msg 'workspace  ; append_layout ~/.config/i3/workspace-1.json' 


# kitty --class cmus --session ~/.config/kitty/autostart/cmus &
# kitty --class gotop --session ~/.config/kitty/autostart/gotop &
# kitty --class cava  --session ~/.config/kitty/autostart/cava &
# kitty --class kitty 

