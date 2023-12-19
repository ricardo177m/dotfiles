#!/bin/bash

chosen=$(printf "  Power Off\n  Restart\n󰗽  Log Out\n  Suspend\n  Hibernate\n  Lock" | rofi -dmenu -i -p "option")

case "$chosen" in
	"  Power Off") poweroff ;;
	"  Restart") reboot ;;
	"󰗽  Log Out") hyprctl dispatch exit 0 ;;
	"  Suspend") swaylock & systemctl suspend ;;
	"  Hibernate") swaylock & systemctl hibernate ;;
	"  Lock") swaylock ;;
	*) exit 1 ;;
esac

