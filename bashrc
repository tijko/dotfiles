#!/usr/bin/env bash

# Bash-Run-Commands (.bashrc)

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
export TERM=screen-256color
[[ -z "$TMUX" ]] && exec tmux
transset --id "$WINDOWID" 0.75 2&>/dev/null

export SDL_AUDIODRIVER=alsa
#export JAVA_HOME=/usr/lib/jvm/default/bin

[[ -f /home/tijko/.Xmodmap ]] && xmodmap "/home/tijko/.Xmodmap"

# cp -i and mv -i
alias cp='cp -i'
alias mv='mv -i'

# cabal-dynamic-install ghc-options
function cabal-dynamic-install() {
    if [[ $# -le 0 ]]
    then
        echo '  [Required] - Install Package-Name!'
        echo '  [help] try > ghc-pkg list {pkg-name}'
        exit 1
    fi

    cabal install "$1" --ghc-options=-dynamic
}

alias cabal-install='cabal-dynamic-install'

alias bbc='nohup mplayer -playlist $(cat ~/radio/bbc.pls) > /dev/null &'
alias npr='nohup mplayer -playlist ~/radio/opb-radio.m3u > /dev/null &'
alias jazz='(nohup mplayer -playlist ~/radio/wbgo.m3u > /dev/null &)'
alias off='pkill mplayer'

function getip {
    if [[ $# -lt 1 ]]
    then
        echo 'ipof: Must Provide Target URL'
        echo 'Usage: ipof TARGET'
        exit 1;
    fi

    target_address=$1;
    ~/.ipof "$target_address"
}

alias ipof='getip'
alias pings='~/.pingsy.sh'
alias mute='~/.mute_vol &>/dev/null'
alias music='~/.music_vol &>/dev/null'
alias bumpit='~/.bump_it &>/dev/null'
alias netflix='~/.netflix_vol &>/dev/null'
alias flash='~/.flash_kill'
alias join-net='sudo ~/.foreign_network'
alias scan='sudo iwlist wlp6s0 scan > wifi.txt'
alias up='sudo ip link set wlp6s0 up'
alias copy='xclip -o | xclip -i -selection clip'
alias ip='ip -color=auto'
alias ls='ls --color=auto'
alias paste='xclip -o --silent'
alias rm='python .remove-cmd.py $1 $2'


PS1='[\u@\h \W]\$ '
export EDITOR='vim'
export CVSROOT=~/cvsroot

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

# MariaDB
export PATH=$PATH:"/usr/local/mysql/bin"

# Haskell Cabal "installdirs"
export PATH=$PATH:"$HOME/.cabal/bin"

source <(kubectl completion bash)
#
# Kubectl Krew
export PATH=$PATH:"$HOME/.krew/bin"

# XXX Valgrind-Dev
export PATH="/usr/local/bin/bin":$PATH

# XXX NGinx-AIO profiling
export PATH="/sbin/nginx":$PATH

# Go
export GOPATH="$HOME/go"
export GOBIN="$GOPATH/bin"
export PATH=$PATH:$GOBIN
