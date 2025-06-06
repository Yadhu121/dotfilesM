#!/bin/bash

chosen=$(printf "🔒 Lock\n⏻ Poweroff\n🔁 Reboot\n🚪 Logout" | \
    wofi --dmenu --width 200 --height 180 --hide-scroll --cache-file /dev/null)

case "$chosen" in
    "🔒 Lock")     loginctl lock-session ;;
    "⏻ Poweroff")  systemctl poweroff ;;
    "🔁 Reboot")   systemctl reboot ;;
    "🚪 Logout")   hyprctl dispatch exit ;;
esac
