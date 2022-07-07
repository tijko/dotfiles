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

alias copy='xclip -o | xclip -i -selection clipboard'
alias get-ip='curl https://ipinfo.io/ip; echo'

alias ls='ls --color=auto'

export PS1='\e[0;33m\t\e[0m <\u\s> $PWD \$ '
export EDITOR='vim'

export HISTSIZE=7000
export HISTCONTROL=ignoredups:erasedups
export HISTTIMEFORMAT='%F %T: '
