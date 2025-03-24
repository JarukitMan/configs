#!/bin/env bash
#lib-notify acpi

notify-send "Battery Info" "$(acpi -b)\nTime: $(timedatectl | grep -Eo -m 1 "[0-9]+:[0-9]+:[0-9]+")" --app-name="BATTERY"
swaync-client --toggle-panel
