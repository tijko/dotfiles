# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

PS1='[\u@\s \W]\$ '

export SHELL=/bin/bash
export GROOVY_HOME=/opt/homebrew/opt/groovy/libexec
export EDITOR=vim

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# append to the history file, don't overwrite it
shopt -s histappend
# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000
# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth
# Timestamp
HISTTIMEFORMAT="%D %T "

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ls='ls -G '
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias python='python3'
alias pip='pip3'
alias kubectl='minikube kubectl --'

[ -z "$TMUX" ] && exec tmux new-session && exit;

# Load Angular CLI autocompletion.
source <(ng completion script)