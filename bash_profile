# ~/.bash_profile

export CATALINA_HOME="/usr/local/tomcat/current"
export CURL_HOME="/opt/homebrew/opt/curl/bin"
export M2_HOME="$HOME/Development/apache-maven-3.8.6"
export GROOVY_HOME="/opt/homebrew/opt/groovy/libexec"
export PYTHON_BIN="/opt/homebrew/opt/python@3.11/bin"
export CLOUDSDK_PYTHON=python3

export HOMEBREW_NO_ENV_HINTS

export PATH="$CURL_HOME:/opt/homebrew/bin:/opt/homebrew/sbin:$PATH:$M2_HOME/bin:$HOME/.krew/bin:$PYTHON_BIN:/opt/homebrew/Cellar/openssl\@1.1/1.1.1s/bin/"

[[ -f ~/.bashrc ]] && . ~/.bashrc
eval export PATH="/Users/tkonick/.jenv/shims:${PATH}"
export JENV_SHELL=bash
export JENV_LOADED=1
unset JAVA_HOME
unset JDK_HOME
source '/opt/homebrew/Cellar/jenv/0.5.6/libexec/libexec/../completions/jenv.bash'
jenv rehash 2>/dev/null
jenv refresh-plugins
jenv() {
  type typeset &> /dev/null && typeset command
  command="$1"
  if [ "$#" -gt 0 ]; then
    shift
  fi

  case "$command" in
  enable-plugin|rehash|shell|shell-options)
    eval `jenv "sh-$command" "$@"`;;
  *)
    command jenv "$command" "$@";;
  esac
}


source "$(brew --prefix)/share/google-cloud-sdk/path.bash.inc"
