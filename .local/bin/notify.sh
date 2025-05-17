#!/bin/bash

case $1 in
    volume)
        pamixer -"$2" 5 --allow-boost --set-limit=150 && killall -s USR1 i3status

        if pamixer --get-mute | grep -q true
        then
            ICON=volume-level-none
        else
            ICON=volume-level-high
        fi

        notify-send -u LOW -h string:x-dunst-stack-tag:volume -i "$ICON" "Volume" -h int:value:"$(pamixer --get-volume)"
        ;;
    battery)
        case $2 in
            C)
                notify-send -u LOW -h string:x-dunst-stack-tag:battery -i battery-good-charging "Battery" "Battery is charging"
                ;;
            D)
                notify-send -u CRITICAL -h string:x-dunst-stack-tag:battery -i battery-050 "Battery" "Battery is discharging"
                ;;
            F)
                notify-send -h string:x-dunst-stack-tag:battery "ignore-this-notification"
                ;;
            N)
                notify-send -h string:x-dunst-stack-tag:battery "ignore-this-notification"
                ;;
            U)
                notify-send -u CRITICAL -h string:x-dunst-stack-tag:battery -i battery-missing "Battery" "Battery status unknown"
                ;;
        esac
        ;;
esac
