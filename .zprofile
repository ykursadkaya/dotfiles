export CLICOLOR=1

export PS1="%B%F{34}%n%f%F{8}@%f%F{34}%m%f%F{8}:%f %F{12}%~%f%F{8}%#%f%b "

export JAVA_HOME=$(/usr/libexec/java_home -v15)
# default java8
# export JAVA_HOME=$JAVA_8_HOME

export GPG_TTY=$(tty)

export PATH="/usr/local/sbin:$PATH"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
