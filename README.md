# centos-workhorse
centos setup ansible


Variables:
 - user: user to apply configs to
 - update_dunst: updates dunst from source if set 
 - update_tmux: updates tmux from source if set. Please specify release URL in tmux/defaults
 - update_feh: updates feh from source if set. Please specify release URL in feh/defaults
 - update_zsh: updates zsh from source if set. Please specify release URL in zsh/defaults


Things I want:
- ui
    - [x] python3 bar               TODO: Config
    - [x] i3              
    - [x] dunst
    - [x] i3lock
    - [x] dmenu
- [x] feh                           Built without curl, but who needs to open pictures via http
- [x] copyq                         TODO: Config
- [x] pcmanfm-qt
- [x] zsh + plugins                 TODO: Powerline config + Aliases
- [x] tmux + new config             TODO: Config
- system shizzle
    - [ ] bluetooth
        - [x] pulseaudio-blueooth
        - [x] bluez
        - [ ] Script to pair/connect/trust devices
        - [ ] Status script for bar
    - [ ] audio
        - [x] Pulseaudio
        - [x] Pulseaudio utils
        - [ ] Script to switch audio devices/modes
        - [ ] Status script for bar
    - [x] video
    - [ ] fingerprint
        - drivers
        - login
    - [ ] Touchpad
        - CLICK ON TAP!!!!
    - [ ] Mobile
    - [ ] Backup
- tools
    - [x] jq
    - [x] net-tools
    - [ ] pagraphcontrol
    - [ ] cronopete or similar
- [ ] slack
- [ ] rambox
- [ ] vivaldi
- [ ] thunderbird
- [ ] thunderbird exchange
- [ ] spotify
- [ ] Some mongodb ui. Compass is shitty
- [ ] jetbrains
- [ ] sublime text
- [ ] scrot or similar
- [ ] shellcheck
- [ ] docker
- [ ] openvpn
-