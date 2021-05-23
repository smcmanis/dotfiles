#!/usr/bin/env bash

CURRENT=$( xrandr --verbose --current | grep eDP1 -A5 | tail -n1 )
CURRENT=${CURRENT##* }

echo "current is ${CURRENT}"
echo "arg1 is $1"

if [ "$1" == "+0.1" ]; then
    # CURRENT=$(( CURRENT + 0.1 ))
    CURRENT=$(echo "$CURRENT + 0.1" | bc)
    echo "incrementing: current is ${CURRENT}"
elif [ "$1" == "-0.1" ]; then
    CURRENT=$(echo "$CURRENT - 0.1" | bc)
    echo "decrementing: current is ${CURRENT}"
fi
if (( $(echo "$CURRENT < 0.1" |bc -l) )); then
    CURRENT=0.1
    echo "too low: current is ${CURRENT}"
fi

if (( $(echo "$CURRENT > 1.5" |bc -l) )); then
    CURRENT=1.5
    echo "too high: current is ${CURRENT}"
fi

echo "new is ${CURRENT}"
xrandr --output eDP1 --brightness "$CURRENT"
