export CLICOLOR=1

export PS1="%B%F{34}%n%f%F{8}@%f%F{34}%m%f%F{8}:%f %F{12}%~%f%F{8}%#%f%b "

export PATH="/usr/local/sbin:$PATH"

export JAVA_HOME=$(/usr/libexec/java_home -v15)
# export CLASSPATH=/Library/Java/Extensions:~/Library/Java/Extensions
# alias java8='export JAVA_HOME=$JAVA_8_HOME'
# default java8
# export JAVA_HOME=$JAVA_8_HOME

export GOPATH=/Users/$USER/.go/
PATH=$GOPATH/bin:$PATH

export NODE_PATH='/usr/local/lib/node_modules'

alias clr-clip='echo -n "" | pbcopy'

alias bfu='brew update && brew upgrade && brew cu -ac'
alias bfuc='brew update && brew upgrade && brew cu -acy && brew cleanup --prune 0'

alias led='bash ~/rgb.sh'

alias python='python3'
alias py3='python3'
alias pip='pip3'

alias pip2-upgrade='pip2 list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip2 install -U'
alias pip3-upgrade='pip3 list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip3 install -U'

alias sshnull='ssh -o "UserKnownHostsFile /dev/null"'

export GPG_TTY=$(tty)

alias cdgr='cd ~/Documents/GitHub'

jdk() {
    version=$1
    export JAVA_HOME=$(/usr/libexec/java_home -v"$version");
    java -version
 }

function spot() {
  mdfind "kMDItemFSName=='*$@*'cd";
}

function remac {
  sudo /System/Library/PrivateFrameworks/Apple80211.framework/Resources/airport -z
  sudo ifconfig en0 ether $(openssl rand -hex 6 | sed 's/\(..\)/\1:/g; s/.$//')
  sudo networksetup -detectnewhardware
  echo $(ifconfig en0 | grep ether)
}

#test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

disable r
