#!/bin/bash

if [ ! -z $(pgrep -x wf-recorder) ]; then
    killall --signal SIGINT wf-recorder
    while [ ! -z $(pgrep -x wf-recorder) ]; do wait; done
    pkill -RTMIN+8 waybar
    notify-send "🔴 Recording ended"
else
    geometry=$(slurp)

    if [ $? -eq "0" ]; then
        wf-recorder -g "$geometry" -f $XDG_RECORDINGS_DIR/$(date +%Y-%m-%d-%H%M%S).mp4 -r 30 &>/dev/null &
        pkill -RTMIN+8 waybar
    else
        notify-send "slurp errored"
    fi
fi

