#!/bin/sh

choice=$(printf "HDMI Output On\nHDMI Output Off" | rofi -dmenu)

case $choice in
	"HDMI Output On")
		xrandr --output HDMI-0 --mode 1920x1080 --pos 0x0 --rotate normal --output eDP-1-1 --primary --mode 1920x1080 --pos 0x1080 --rotate normal
		;;
	"HDMI Output Off")
		xrandr --output HDMI-0 --off --output eDP-1-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal
		;;
esac
