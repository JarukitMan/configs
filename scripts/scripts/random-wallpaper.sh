#!/bin/bash
sleep .1

while true
do
	hyprctl hyprpaper unload all
	wallpapers=($(ls -d ~/Images/Wallpapers/*))
	wallpaper=${wallpapers[ $RANDOM % ${#wallpapers[@]}]}

	sleep .1
	hyprctl hyprpaper preload $wallpaper
	sleep .1
	hyprctl hyprpaper wallpaper ,$wallpaper

sleep 1800
done
