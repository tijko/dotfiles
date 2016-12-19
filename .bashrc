#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
export TERM=screen-256color
[[ -z "$TMUX" ]] && exec tmux 

alias ls='ls --color=auto'
function cd
{
    builtin cd $1
    pwd > ~/.cdir
}

PS1='[\u@\h \W]\$ '
export EDITOR='vim'

if [ -f ~/.cdir ]
then
    cd $(cat ~/.cdir)
fi
