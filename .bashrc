#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
export TERM=screen-256color
if [[ -z "$TMUX" && -f /usr/bin/tmux ]]
then
	exec tmux
fi


alias ipof='~/.ipof $1'
alias pings='~/.pingsy.sh'
alias copy='xclip -o | xclip -i -selection clipboard'

alias ls='ls --color=auto'

PS1='[\u@\h \W]\$ '
export EDITOR='vim'

export HISTSIZE=7000
export HISTCONTROL=ignoredups:erasedups
export HISTTIMEFORMAT='%F %T: '

export ANSIBLE_LOG_PATH=~/ansible.log
export ANSIBLE_DEBUG=True
