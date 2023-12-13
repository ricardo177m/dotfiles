#!/bin/sh

if [ ! -z $(pgrep -x wf-recorder) ]; then
	killall --signal SIGINT wf-recorder
	while [ ! -z $(pgrep -x wf-recorder) ]; do wait; done
	pkill -RTMIN+8 waybar
	notify-send "🔴 Recording ended"
fi

