# centos-workhorse
centos setup ansible


Variables:
 - user: user to apply configs to
 - update_dunst: updates dunst from source if set 
 - update_tmux: updates tmux from source if set. Please specify release URL in tmux/defaults
 - update_feh: updates feh from source if set. Please specify release URL in feh/defaults
 - update_zsh: updates zsh from source if set. Please specify release URL in zsh/defaults
 - update_pagraphcontrol: updates pagraphcontrol from source if set.
 - update_jetbrains: updates jetbrains toolbox from URL set in applications/defauls if set.

Manual Todo:
 - Install Thunderbird plugin ExQuilla https://addons.thunderbird.net/de/thunderbird/addon/exquilla-exchange-web-services/?src=search


Things I want:
- ui
    - [x] python3 bar               TODO: Config
    - [x] i3              
    - [x] dunst
    - [x] i3lock
    - [x] dmenu
    - [ ] Conky                     TODO: Config stats on background
- [x] feh                           Built without curl, but who needs to open pictures via http
- [x] copyq                         
- [x] pcmanfm-qt
- [x] zsh + plugins                 
- [x] tmux + new config             
- system shizzle
    - [ ] bluetooth
        - [x] pulseaudio-blueooth
        - [x] bluez
        - [x] Script to pair/connect/trust devices (use bluetoothctl or bar)
        - [ ] Status script for bar
    - [ ] audio
        - [x] Pulseaudio
        - [x] Pulseaudio utils
        - [x] Script to switch audio devices/modes (Use pagraphcontrol)
        - [ ] Status script for bar
    - [x] video
	    - [x] Display brightness
	    - Multimonitor scripts
        - Auto set DPI
        - Auto reload i3 
        - Auto enable monitors when connected
    - [x] fingerprint (Not gonna happen, see x1-carbon-drivers README)
        - drivers
        - login
    - [x] Touchpad + Trackpoint
    - [x] Mobile (Not gonna happen, see x1-carbon-drivers README)
    - [ ] Backup (Cronopete or similar)
- tools
    - [x] jq
    - [x] net-tools
    - [x] pagraphcontrol
    - [x] kpcli
- [x] slack
- [x] rambox
- [x] vivaldi
- [x] thunderbird
- [x] spotify
- [x] Some mongodb ui. Compass is shitty 
	`docker run --net=host --env="DISPLAY" --volume="$HOME/.Xauthority:/root/.Xauthority:rw" -v "$HOME/data/robo3t/3T:/root/.3T" -v "$HOME/data/robo3t/config:/root/.config/3T" njordr/robo3t`
- [x] jetbrains
- [x] sublime text
- [x] gnome-screenshot
- [x] docker
- [x] openvpn
- [x] vdirsyncer+khal
- [ ] diverse liniting tools (shell ansible python yml) TODO: Welche genau?


TODO:
RESTManager in pip package verwandeln
Alias for keyboard layout switch
Private Config files backup:
    - Rambox
    - vdirsyncer
    - rambox
    - openvpn


i3 Monitor modes:
- Scaling enabled: 
    - xrandr --output eDP-1 --scale 0.75x0.75 --dpi 75
    - xrdb update Xft
- Scaling disabled: 
    - xrandr --output eDP-1 --scale 1x1 --dpi 125
    - xrdb update Xft
- 3 Monitors: 
    - Enable scaling
    - xrdb update Xft
    - Load 3 monitor setup from arandr
- 2 Monitors: 
    - Disable scaling
    - xrdb update Xft
    - Load 2 monitor setup from arandr
- Internal only:
    - Load 2 Monitor setup from arandr
