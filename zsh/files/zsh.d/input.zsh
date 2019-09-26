#    Code     Modifiers
#  ---------------------------------
#     2       Shift
#     3       Alt
#     4       Shift + Alt
#     5       Control
#     6       Shift + Control
#     7       Alt + Control
#     8       Shift + Alt + Control
#  ---------------------------------

backward-kill-dir () {
    local WORDCHARS=${WORDCHARS/\/}
    zle backward-kill-word
}
zle -N backward-kill-dir

typeset -g -A key

key[Home]="${terminfo[khome]}"
key[End]="${terminfo[kend]}"
key[Insert]="${terminfo[kich1]}"
key[Delete]="${terminfo[kdch1]}"
key[CtrlDelete]="^[[3;5~"
key[CtrlBackSpace]="^H"
key[ShiftTab]="${terminfo[kcbt]}"
key[CtrlLeft]="${terminfo[kLFT5]}"
key[CtrlRight]="${terminfo[kRIT5]}"
key[CtrlShiftLeft]="${terminfo[kLFT6]}"
key[CtrlShiftRight]="${terminfo[kRIT6]}"



# setup key accordingly
[[ -n "${key[Home]}"            ]]  && bindkey -- "${key[Home]}"                beginning-of-line
[[ -n "${key[CtrlShiftLeft]}"   ]]  && bindkey -- "${key[CtrlShiftLeft]}"       beginning-of-line
[[ -n "${key[CtrlShiftRight]}"  ]]  && bindkey -- "${key[CtrlShiftRight]}"      end-of-line
[[ -n "${key[End]}"             ]]  && bindkey -- "${key[End]}"                 end-of-line
[[ -n "${key[Insert]}"          ]]  && bindkey -- "${key[Insert]}"              quoted-insert
[[ -n "${key[Delete]}"          ]]  && bindkey -- "${key[Delete]}"              delete-char
[[ -n "${key[CtrlDelete]}"      ]]  && bindkey -- "${key[CtrlDelete]}"          kill-word
[[ -n "${key[CtrlBackSpace]}"   ]]  && bindkey -- "${key[CtrlBackSpace]}"       backward-kill-dir
[[ -n "${key[ShiftTab]}"        ]]  && bindkey -- "${key[ShiftTab]}"            reverse-menu-complete
[[ -n "${key[CtrlRight]}"       ]]  && bindkey -- "${key[CtrlRight]}"           forward-word
[[ -n "${key[CtrlLeft]}"        ]]  && bindkey -- "${key[CtrlLeft]}"            backward-word



if (( ${+terminfo[smkx]} && ${+terminfo[rmkx]} )); then
	autoload -Uz add-zle-hook-widget
	function zle_application_mode_start {
		echoti smkx
	}
	function zle_application_mode_stop {
		echoti rmkx
	}
	add-zle-hook-widget -Uz zle-line-init zle_application_mode_start
	add-zle-hook-widget -Uz zle-line-finish zle_application_mode_stop
fi
