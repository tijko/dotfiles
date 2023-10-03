#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
export TERM=screen-256color
[[ -z "$TMUX" ]] && exec tmux 

export SDL_AUDIODRIVER=alsa
export ANDROID_SDK_ROOT=/opt/android-sdk
#export JAVA_HOME=/usr/lib/jvm/default/bin

alias bbc='nohup mplayer -playlist $(cat ~/radio/bbc.pls) > /dev/null &'
alias npr='nohup mplayer -playlist ~/radio/opb-radio.m3u > /dev/null &'
alias jazz='(nohup mplayer -playlist ~/radio/wbgo.m3u > /dev/null &)'
alias off='pkill mplayer'
alias ipof='~/.ipof $1'
alias pings='~/.pingsy.sh'
alias mute='~/.mute_vol &>/dev/null'
alias music='~/.music_vol &>/dev/null'
alias bumpit='~/.bump_it &>/dev/null'
alias netflix='~/.netflix_vol &>/dev/null'
alias flash='~/.flash_kill'
alias join-net='sudo ~/.foreign_network'
alias scan='sudo iwlist wlp6s0 scan > wifi.txt'
alias up='sudo ip link set wlp6s0 up'
alias copy='xclip -o | xclip -i -selection clipboard'
alias ip='ip -color=auto'
alias ls='ls --color=auto'
alias mac='ssh tkonick@192.168.1.152'

function cd
{
    builtin cd $1
    pwd > ~/.cdir
}

PS1='[\u@\h \W]\$ '
export EDITOR='vim'
export CVSROOT=~/cvsroot

if [ -f ~/.cdir ]
then
    cd $(cat ~/.cdir)
fi

export HISTSIZE=7000
export HISTCONTROL=ignoredups:erasedups
export HISTTIMEFORMAT='%F %T: '

# added by pipx (https://github.com/pipxproject/pipx)
export PATH="/home/tijko/.local/bin:$PATH:~/.gem/ruby/2.7.0/bin"
export GEM_PATH=$GEM_PATH:"~/.gem/ruby/2.7.0/bin"

# Ruby version 3.0.0
export PATH=$PATH:"~/.gem/ruby/3.0.0/bin"
# Groovy
export PATH=$PATH:"$HOME/apache-groovy/groovy-4.0.6/bin"
# Rust
export PATH=$PATH:"$HOME/.cargo/bin"

# XXX Add Haskell Cabal "installdirs"
# `
source <(kubectl completion bash)
#
source <(ng completion script)
