#!/bin/sh
DPI=$(xdpyinfo | grep resolution | grep -oE "[0-9]+x[0-9]+")
if [[ $DPI != "125x125" ]]; then
	sed -i "s/Xft.dpi:.*/Xft.dpi: 125/" ~/.Xresources
	xrdb -merge ~/.Xresources
fi
xrandr \
	--dpi 125 \
	--output DP-2-1 --off \
	--output DP-2-2 --off \
	--output DP-2-3 --off \
	--output eDP-1 --mode 2560x1440 --pos 0x0 --rotate normal --scale 1x1 --primary \
	--output HDMI-2 --off \
	--output HDMI-1 --off \
	--output DP-2 --off \
	--output DP-1 --off
i3-msg restart
killall conky || true
conky -d -c ~/.i3/conky.conf
