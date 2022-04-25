#
# ~/.bashrc
#
export DIVE_VERSION=$(curl -s "https://api.github.com/repos/wgoodman/dive/releases/latest" | grep -Po '"tag_name": "v\K[0-9.]+')
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
alias scan='sudo iwlist wlp6s0 scan > wifi.txt'
alias up='sudo ip link set wlp6s0 up'
alias copy='xclip -o | xclip -i -selection clipboard'
alias get-ip='curl https://ipinfo.io/ip; echo'

alias ls='ls --color=auto'
alias python="python2"

export PS1='\e[0;33m\t\e[0m <\u\s> $PWD \$ '

export EDITOR='vim'

export HISTSIZE=7000
export HISTCONTROL=ignoredups:erasedups
export HISTTIMEFORMAT='%F %T: '
