#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# Check SSH_CONNECTION, because else tmux would execute startx on ssh connections
[[ -z $DISPLAY && $XDG_VTNR -eq 1 && -z $SSH_CONNECTION ]] && exec startx
