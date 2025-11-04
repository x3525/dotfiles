#!/bin/bash

if [ "$(id -u)" -eq 0 ]
then
    echo "Need a standard user!"
    exit 1
fi

if [ "$(dirname -- "$0")" != "." ]
then
    echo "Wrong current working directory!"
    exit 1
fi

cp -r -- .[!g]* ~

# Enable timers
for u in battery-notification.timer
do
    systemctl --user --now enable "$u"

    if [ "$(systemctl --user show -P ConditionResult "$u")" != "yes" ]
    then
        systemctl --user --now disable "$u"
    fi
done
