#!/bin/bash
#libnotify, acpi

while true
do
	battery_level=$(acpi -b | grep -Eo "[0-9]++%" | grep -Eo "[0-9]+")
	ac_power=$(acpi -a | grep -Eo "[a-z]+-line")

	if [ $battery_level -ge 80 ] && [ $ac_power = "on-line" ];
	then
		notify-send -i /home/edward/Documents/my-codes/resources/ui-confused.png "Battery High ($battery_level %)" "Discharge Now!" && mpg123 /home/edward/Documents/my-codes/resources/ui_notif.mp3 --app-name="BATTERY"
	elif [ $battery_level -le 20 ] && [ $ac_power = "off-line" ];
	then
		notify-send  -i /home/edward/Documents/my-codes/resources/ui-confused.png "Battery Low ($battery_level %)" "Charge Now!" && mpg123 /home/edward/Documents/my-codes/resources/ui_notif.mp3 --app-name="BATTERY"
fi
sleep 120
done
