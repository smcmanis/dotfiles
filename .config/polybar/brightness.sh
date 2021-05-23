brightness=$( xrandr --verbose --current | grep eDP-1 -A5 | tail -n1 )
brightness=${brightness##* }
brightness=$(echo "$(($brightness * 100))" | bc)
brightness=${brightness%.*}
echo "$brightness"
