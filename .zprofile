export CLICOLOR=1

export PS1="%B%F{34}%n%f%F{8}@%f%F{34}%m%f%F{8}:%f %F{12}%~%f%F{8}%#%f%b "

# export JAVA_HOME=$(/usr/libexec/java_home -v15)
# default java8
# export JAVA_HOME=$JAVA_8_HOME

export GPG_TTY=$(tty)

export PATH="/usr/local/sbin:$PATH"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Added by OrbStack: command-line tools and integration
source ~/.orbstack/shell/init.zsh 2>/dev/null || :

export HOMEBREW_PREFIX="/opt/homebrew";
export HOMEBREW_CELLAR="/opt/homebrew/Cellar";
export HOMEBREW_REPOSITORY="/opt/homebrew";
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin${PATH+:$PATH}";
