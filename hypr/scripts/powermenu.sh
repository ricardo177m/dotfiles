#!/bin/bash

chosen=$(printf "  Power Off\n  Restart\n  Suspend\n  Hibernate\n󰗽  Log Out\n  Lock" | rofi -dmenu -i -p "option")

case "$chosen" in
	"  Power Off") poweroff ;;
	"  Restart") reboot ;;
	"󰗽  Log Out") hyprctl dispatch exit 0 ;;
	"  Suspend") swaylock & systemctl suspend ;;
	"  Hibernate") swaylock & systemctl suspend-then-hibernate ;;
	"  Lock") swaylock ;;
	*) exit 1 ;;
esac

