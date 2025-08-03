#!/bin/bash

echo -en "poweroff\0info\x1fsystemctl\x1ficon\x1fsystem-shutdown\x1fpermanent\x1ftrue\n"
echo -en "reboot\0info\x1fsystemctl\x1ficon\x1fsystem-reboot\x1fpermanent\x1ftrue\n"
echo -en "exit\0info\x1fi3-msg\x1ficon\x1fsystem-log-out\x1fpermanent\x1ftrue\n"

$ROFI_INFO "$1"
