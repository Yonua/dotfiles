#!/bin/sh

if [[ $# -eq 1 && $1 == "-get" ]]; then
	lightexp="$(cat /sys/class/backlight/intel_backlight/actual_brightness)"
	echo `expr $lightexp / 1200`
elif [[ $# -eq 2 ]]; then
    if [[ $1 == "-set" && ( $2 -le 100 && $2 -ge 10 ) ]]; then
            light=`expr $2 \* 1200`
            echo $light > /sys/class/backlight/intel_backlight/brightness
    fi
fi
