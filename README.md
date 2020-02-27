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
    - [ ] python3 bar
    - [ ] i3
    - [ ] dunst
    - [ ] i3lock
    - [ ] dmenu
    - [ ] Conky
- [ ] feh
- [ ] copyq                         TODO: Alternative?
- [ ] pcmanfm-qt
- [ ] zsh + plugins
- [ ] tmux + new config
- system shizzle
    - [ ] bluetooth
        - [ ] pulseaudio-blueooth
        - [ ] bluez
        - [ ] Script to pair/connect/trust devices (use bluetoothctl or bar)
        - [ ] Status script for bar
    - [ ] audio
        - [ ] Pulseaudio
        - [ ] Pulseaudio utils
        - [ ] Script to switch audio devices/modes (Use pagraphcontrol)
        - [ ] Status script for bar
        - [ ] Bluetooth media keys
    - [ ] video
	    - [ ] Display brightness
	    - Multimonitor scripts
        - Auto set DPI
        - Auto reload i3
        - Auto enable monitors when connected
    - [ ] fingerprint (Not gonna happen, see x1-carbon-drivers README)
        - drivers
        - login
    - [ ] On(un)dock actions -> video
    - [ ] Touchpad + Trackpoint
        - synclient HorizTwoFingerScroll=1
        - synclient TapButton1=1
    - [ ] Mobile (Not gonna happen, see x1-carbon-drivers README)
    - [ ] Backup (Cronopete, duplicity, dejadup)
- tools
    - [ ] jq
    - [ ] net-tools
    - [ ] pagraphcontrol
    - [ ] kpcli
- [ ] slack
- [ ] rambox
- [ ] vivaldi
- [ ] thunderbird
- [ ] spotify
- [ ] Some mongodb ui. Compass is shitty
	`docker run --net=host --env="DISPLAY" --volume="$HOME/.Xauthority:/root/.Xauthority:rw" -v "$HOME/data/robo3t/3T:/root/.3T" -v "$HOME/data/robo3t/config:/root/.config/3T" njordr/robo3t`
- [ ] jetbrains
- [ ] sublime text
- [ ] gnome-screenshot
- [ ] docker
- [ ] openvpn
- [ ] vdirsyncer+khal
- [ ] spotifyctl + RESTmanager
- [ ] diverse liniting tools (shell ansible python yml) TODO: Welche genau?
- [ ] NetExtender
- [ ] Disable SELinux
- [ ] Molecule


TODO:
RESTManager in pip package verwandeln
ZSH aliases for k8s
Private Config files backup:
    - openvpn
