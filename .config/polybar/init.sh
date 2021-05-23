
#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
# while pgrep -x polybar >/dev/null; do sleep 1; done
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch polybar
# polybar main -c $HOME/.config/polybar/dracula/config.ini &
polybar main -c $(dirname $0)/config.ini &

