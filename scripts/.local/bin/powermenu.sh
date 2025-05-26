#!/bin/sh

OPTION=$(printf "󰩈   Logoff\n   Shutdown\n   Reboot\n󰤁   Suspend\n   Hibernate\n" | wofi --show dmenu)

if [[ $(echo $OPTION | grep Logoff) ]]; then
    hyprctl dispatch exit
    exit 1
fi
if [[ $(echo $OPTION | grep Shutdown) ]]; then
    systemctl poweroff
    exit 1
fi
if [[ $(echo $OPTION | grep Reboot) ]]; then
    systemctl reboot
    exit 1
fi
if [[ $(echo $OPTION | grep Suspend) ]]; then
    (sleep 1; systemctl suspend) & hyprlock
    exit 1
fi
if [[ $(echo $OPTION | grep Hibernate) ]]; then
    (sleep 1; systemctl hibernate) & hyprlock
    exit 1
fi
