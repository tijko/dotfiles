#
# ~/.bash_profile
#

TZ='America/Los_Angeles'
export TZ
[[ -f ~/.bashrc ]] && . ~/.bashrc
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
TZ="America/New_York"; export TZ

export AWS_PROFILE="tijko"
export AWS_DEFAULT_PROFILE="tijko"
