#!/bin/bash

chosen=$(printf " Lock\n⏻ Poweroff\n Reboot\n󰗽 Logout" | rofi -dmenu -i -p "Power Menu")

case "$chosen" in
    " Lock") hyprlock ;;
    "⏻ Poweroff") systemctl poweroff ;;
    " Reboot") systemctl reboot ;;
    "󰗽 Logout") hyprctl dispatch exit ;;
    *) exit 1 ;;
esac

