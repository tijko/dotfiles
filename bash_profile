#
# ~/.bash_profile
#

export CATALINA_HOME=/usr/local/tomcat/current
export JAVA_HOME=$(/usr/libexec/java_home)
export M2_HOME="$HOME/Development/apache-maven-3.8.6"
export GROOVY_HOME=/opt/homebrew/opt/groovy/libexec
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH:$M2_HOME/bin:$HOME/.krew/bin"

[[ -f ~/.bashrc ]] && . ~/.bashrc
