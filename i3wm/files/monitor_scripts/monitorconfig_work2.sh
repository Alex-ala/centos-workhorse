#!/bin/bash 
DPI=$(xdpyinfo | grep resolution | grep -oE "[0-9]+x[0-9]+")
if [[ $DPI != "72x72" ]]; then
	sed -i "s/Xft.dpi:.*/Xft.dpi: 72/" ~/.Xresources
	xrdb -merge ~/.Xresources
fi
xrandr \
        --dpi 72 \
        --output DP-2-1 --off \
        --output DP-2-2 --off \
        --output DP-2-3 --mode 2560x1440 --pos 0x0 --rotate normal --primary \
        --output eDP-1 --off \
        --output HDMI-2 --off \
        --output HDMI-1 --off \
        --output DP-2 --off \
        --output DP-1 --off
xrandr \
        --dpi 72 \
        --output DP-2-1 --mode 2560x1440 --pos 2560x0 --rotate normal \
        --output DP-2-2 --off \
        --output DP-2-3 --mode 2560x1440 --pos 0x0 --rotate normal --primary \
        --output eDP-1 --off \
        --output HDMI-2 --off \
        --output HDMI-1 --off \
        --output DP-2 --off \
        --output DP-1 --off

i3-msg restart
killall conky || true
conky -d -c ~/.i3/conky.conf
