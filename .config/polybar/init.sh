
#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch polybar
polybar eDP1 -c $HOME/.config/polybar/config.ini &
polybar HDMI1 -c $(dirname $0)/config.ini &

