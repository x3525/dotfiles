#!/bin/bash

command echo -en "poweroff\0icon\x1fsystem-shut-down\x1fdisplay\x1fShut Down\x1fpermanent\x1ftrue\x1finfo\x1fsystemctl\n"
command echo -en "reboot\0icon\x1fsystem-restart\x1fdisplay\x1fRestart\x1fpermanent\x1ftrue\x1finfo\x1fsystemctl\n"
command echo -en "exit\0icon\x1fsystem-log-out\x1fdisplay\x1fLog Out\x1fpermanent\x1ftrue\x1finfo\x1fi3-msg\n"

[ -z "$ROFI_INFO" ] || $ROFI_INFO "$1"
