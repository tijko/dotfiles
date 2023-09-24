#
# ~/.bash_profile
#
export CATALINA_HOME="/usr/local/tomcat/current"
export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"
export CURL_HOME="/opt/homebrew/opt/curl/bin"
export M2_HOME="$HOME/Development/apache-maven-3.8.6"
export GROOVY_HOME="/opt/homebrew/opt/groovy/libexec"
export PYTHON_BIN="/opt/homebrew/opt/python@3.11/bin"
export RUST_HOME="/home/tijko/.cargo/bin"

export PATH="$JAVA_HOME:$CURL_HOME:$RUST_HOME:/opt/homebrew/bin:/opt/homebrew/sbin:$PATH:$M2_HOME/bin:$HOME/.krew/bin:$PYTHON_BIN:/opt/homebrew/Cellar/openssl\@1.1/1.1.1s/bin/"

[[ -f ~/.bashrc ]] && . ~/.bashrc
