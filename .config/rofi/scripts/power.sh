#!/bin/bash

echo -en "Sign out\0permanent\x1ftrue\x1ficon\x1fsystem-log-out\n"
echo -en "Restart\0permanent\x1ftrue\x1ficon\x1fsystem-reboot\n"
echo -en "Shut down\0permanent\x1ftrue\x1ficon\x1fsystem-shutdown\n"

case $1 in
    "Sign out")
        i3-msg exit
        ;;
    "Restart")
        systemctl reboot
        ;;
    "Shut down")
        systemctl poweroff
        ;;
esac
