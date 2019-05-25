# centos-workhorse
centos setup ansible


Variables:
 - user: user to apply configs to
 - update_dunst: updates dunst from source if set 
 - update_tmux: updates tmux from source if set. Please specify release URL in tmux/defaults
 - update_feh: updates feh from source if set. Please specify release URL in feh/defaults
 - update_zsh: updates zsh from source if set. Please specify release URL in zsh/defaults


Things I want:
- [ ] slack
- [ ] rambox
- [ ] vivaldi
- [ ] thunderbird
- [ ] thunderbird exchange
- [ ] spotify
- ui
    - [x] python3 bar               TODO: Config
    - [x] i3              
    - [x] dunst
    - [x] i3lock
    - [x] dmenu
- [x] feh                           Built without curl, but who needs to open pictures via http
- [x] copyq                         TODO: Config
- [x] pcmanfm-qt
- [ ] zsh + plugins
- [x] tmux + new config             TODO: Config
- system shizzle
    - [ ] bluetooth
    - [ ] audio
    - [ ] video
    - [ ] fingerprint
    - [ ] Mobile?
    - [ ] Backup
- tools
    - [x] jq
    - [x] net-tools
- [ ] Some mongodb ui. Compass is shitty
- [ ] jetbrains
- [ ] sublime text
- [ ] scrot or similar
- [ ] shellcheck
- [ ] docker
- [ ] openvpn
-