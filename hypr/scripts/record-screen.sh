#!/bin/bash

if pgrep -x "wf-recorder" > /dev/null; then
    pkill wf-recorder
    notify-send "🔴 Recording stopped"
else
    wf-recorder -g "$(slurp)" -f ~/Videos/$(date +%Y-%m-%d-%H%M%S).mp4 &>/dev/null
    # notify-send "🔴 Recording started"
fi
