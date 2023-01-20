#
# ~/.bash_profile
#

export CATALINA_HOME="/usr/local/tomcat/current"
export CURL_HOME="/opt/homebrew/opt/curl/bin"
export JAVA_HOME=$(/usr/libexec/java_home)
export M2_HOME="$HOME/Development/apache-maven-3.8.6"
export GROOVY_HOME="/opt/homebrew/opt/groovy/libexec"
export PYTHON_BIN="$HOME/Library/Python/3.10/bin"
export PATH="$CURL_HOME:/opt/homebrew/bin:/opt/homebrew/sbin:$PATH:$M2_HOME/bin:$HOME/.krew/bin:$PYTHON_BIN:/opt/homebrew/Cellar/openssl\@1.1/1.1.1s/bin/"

[[ -f ~/.bashrc ]] && . ~/.bashrc
