#!/bin/sh
while true; do
    line=""
    # only add wifi if connected
    for i in $(ip addr | grep " UP " -A3 | grep inet | tr '/' ' ' | awk '{ print $2 }'); do
        line=" $i | "
    done

    # battery only if present
    if [ -d /sys/class/power_supply/BAT1 ]; then
        line="${line}BAT $(cat /sys/class/power_supply/BAT1/capacity)% | "
    fi

    line="${line}$(date '+%a %d %b %H:%M')"
    echo "$line"
    sleep 10
done
