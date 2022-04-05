#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
export TERM=screen-256color
[[ -f "/usr/bin/tmux" ]] && exec tmux 

alias ls='ls --color=auto'

PS1='[\u@\h \W]\$ '
export EDITOR='vim'

export HISTSIZE=7000
export HISTCONTROL=ignoredups:erasedups
export HISTTIMEFORMAT='%F %T: '
