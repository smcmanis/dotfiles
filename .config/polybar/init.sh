
#!/usr/bin/env sh

# Wait until the processes have been shut down
# while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch polybar
for m in "eDP1" "HDMI1" "DP1" "DP2"; do
  status="$(xrandr | grep -w connected | grep -w $m | cut -d ' ' -f 2)"
  if [[ $status == "connected" ]]; then
    polybar $m -c /home/simon/.config/polybar/config.ini &
  fi
done
