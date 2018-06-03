#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
export TERM=screen-256color
[[ -z "$TMUX" ]] && exec tmux 

alias bbc='nohup mplayer -playlist $(cat ~/radio/bbc.pls) > /dev/null &'
alias npr='nohup mplayer -playlist ~/radio/opb-radio.m3u > /dev/null &'
alias jazz='(nohup mplayer -playlist ~/radio/wbgo.m3u > /dev/null &)'
alias off='pkill mplayer'
alias ipof='~/.ipof $1'
alias pings='~/.pingsy.sh'
alias mute='~/.mute_vol 2&>/dev/null'
alias music='~/.music_vol 2&>/dev/null'
alias bumpit='~/.bump_it 2&>/dev/null'
alias netflix='~/.netflix_vol 2&>/dev/null'
alias flash='~/.flash_kill'
alias net='~/.foreign_network'
alias scan='sudo iwlist wlp6s0 scan > wifi.txt'
alias up='sudo ip link set wlp6s0 up'
alias copy='xclip -o | xclip -i -selection clipboard'

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

export ANDROID_HOME=/opt/android-sdk

export HISTSIZE=7000
export HISTCONTROL=ignoredups:erasedups
export HISTTIMEFORMAT='%F %T: '
