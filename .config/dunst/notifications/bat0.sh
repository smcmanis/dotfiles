#!/bin/sh

CAPACITY=$(cat /sys/class/power_supply/BAT0/capacity)

STATUS=$(cat /sys/class/power_supply/BAT0/status)

if [[ "$STATUS" = "Discharging" ]]; then
    MESSAGE="$CAPACITY% battery remaining"
  if [ $CAPACITY -lt 10 ]; then
    URGENCY=critical
  elif [ $CAPACITY -lt 20 ]; then
    URGENCY=normal
  else
    exit 0
  fi
  /usr/bin/notify-send -u $URGENCY -a power_supply_low "Low Battery" "$MESSAGE"
fi

