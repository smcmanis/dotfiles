brightness=$( xrandr --verbose --current | grep HDMI-0 -A5 | tail -n1 )
brightness=${brightness##* }
brightness=$(echo $brightness*100 | bc)
brightness=${brightness%.*}
echo "$brightness"