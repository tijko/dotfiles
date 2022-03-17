#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
export TERM=screen-256color
$(ls /usr/bin/tmux 2&>/dev/null)
if [[ $? -eq 0 ]]
then
	[[ -z "$TMUX" ]] && exec tmux 
fi

alias off='pkill mplayer'
alias ipof='~/.ipof $1'
alias pings='~/.pingsy.sh'
alias mute='~/.mute_vol &>/dev/null'
alias music='~/.music_vol &>/dev/null'
alias bumpit='~/.bump_it &>/dev/null'
alias netflix='~/.netflix_vol &>/dev/null'
alias flash='~/.flash_kill'
alias net='~/.foreign_network'
alias scan='sudo iwlist wlp6s0 scan > wifi.txt'
alias up='sudo ip link set wlp6s0 up'
alias copy='xclip -o | xclip -i -selection clipboard'
alias get-ip='curl https://ipinfo.io/ip; echo'

alias ls='ls --color=auto'

export EDITOR='vim'


export HISTSIZE=7000
export HISTCONTROL=ignoredups:erasedups
export HISTTIMEFORMAT='%F %T: '
