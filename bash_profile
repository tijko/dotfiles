#
# ~/.bash_profile
#

export CATALINA_HOME=/usr/local/tomcat/current
export JAVA_HOME=$(/usr/libexec/java_home)
export M2_HOME="$HOME/Development/apache-maven-3.8.6"
export PATH="/opt/homebrew/bin:$PATH:$M2_HOME/bin"
export PATH=$PATH:/usr/local/bin/go

[[ -f ~/.bashrc ]] && . ~/.bashrc
