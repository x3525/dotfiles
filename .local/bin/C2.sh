#!/bin/bash

function brightness() {
    brightnessctl set "$2"%"$1"
}

function lock() {
    dunstctl set-paused true

    i3lock -n -c 000000 -p default -e -f -k &

    wait

    dunstctl set-paused false
}

function menu() {
    rofi -no-lazy-grab -show "$1" -modes "$1" -theme "$1"
}

function notify() {
    case $1 in
        battery)
            case $3 in
                0)
                    DIGITS=000
                    ;;
                [1-9])
                    DIGITS=010
                    ;;
                [1-9]?)
                    DIGITS=0${3:0:1}0
                    ;;
                100)
                    DIGITS=100
                    ;;
                *)
                    DIGITS=050
                    ;;
            esac
            case $2 in
                C)
                    # Charging
                    notify-send -h string:x-dunst-stack-tag:battery -u low -i battery-"$DIGITS"-charging "Charging"
                    ;;
                D)
                    # Discharging
                    notify-send -h string:x-dunst-stack-tag:battery -u critical -i battery-"$DIGITS" "Discharging"
                    ;;
                F)
                    # Full
                    notify-send -h string:x-dunst-stack-tag:battery -u low "MuVaFFaKiYeT"
                    ;;
                N)
                    # Not charging
                    notify-send -h string:x-dunst-stack-tag:battery -u low "MuVaFFaKiYeT"
                    ;;
                U)
                    # Unknown
                    notify-send -h string:x-dunst-stack-tag:battery -u critical -i battery-missing "Unknown"
                    ;;
            esac
            ;;
        volume)
            pamixer -"$2" "$3" --allow-boost --set-limit=150

            killall -s USR1 i3status

            if pamixer --get-mute | grep -q true
            then
                ICON=volume-level-none
            else
                ICON=volume-level-high
            fi

            notify-send -h string:x-dunst-stack-tag:volume -u low -i "$ICON" "" -h int:value:"$(pamixer --get-volume)"
            ;;
    esac
}

function execute() {
    [ -d "$1" ] || return

    for d in "$1"/*
    do
        f=$(basename -- "$d")

        p=${f%.*}

        killall -q -- "$p"

        while pgrep -u "$(id -u)" -x "$p"
        do
            sleep 1
        done
    done

    dex -a -s "$1"
}

$1 "${@:2}"
