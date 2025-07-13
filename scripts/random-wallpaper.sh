#!/bin/bash
sleep 0.1
while true
do
	wallpapers=($(ls -d ~/Images/Wallpapers/*))
	wallpaper=${wallpapers[ $RANDOM % ${#wallpapers[@]}]}

	# sleep 0.1
	# hyprctl hyprpaper unload all
	# # sleep 0.1
	# hyprctl hyprpaper preload $wallpaper
	# # sleep 0.1
	# hyprctl hyprpaper wallpaper ,$wallpaper
	hyprctl hyprpaper reload ,$wallpaper

sleep 1800
done
