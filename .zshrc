export CLICOLOR=1

export PS1="%B%F{34}%n%f%F{8}@%f%F{34}%m%f%F{8}:%f %F{12}%~%f%F{8}%#%f%b "

export PATH="/usr/local/sbin:$PATH"

export HOMEBREW_PREFIX="/opt/homebrew";
export HOMEBREW_CELLAR="/opt/homebrew/Cellar";
export HOMEBREW_REPOSITORY="/opt/homebrew";
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin${PATH+:$PATH}";

export GPG_TTY=$(tty)

export HOMEBREW_NO_INSTALL_FROM_API=1
export HOMEBREW_NO_ANALYTICS=1

export GOPATH=/Users/$USER/.go
PATH=$GOPATH/bin:$PATH
export GO111MODULE=on
# export GOPROXY=https://proxy.golang.org,direct
# export GOPRIVATE="github.com/ykursadkaya"
# export GONOSUMDB="github.com/ykursadkaya"
export CGO_ENABLED=0

export PATH="${PATH}:${HOME}/.krew/bin"

# export JAVA_HOME=$(/usr/libexec/java_home -v1.8)

# export NVM_DIR="$HOME/.nvm"
# [ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
# export PATH="/usr/local/opt/node@10/bin:$PATH"
# export PATH="/usr/local/opt/node@16/bin:$PATH"

# export GO_ENV=stage
# export OTEL_EXPORTER_ENABLED=false
# export QUARKUS_PROFILE=stage
# export SPRING_PROFILES_ACTIVE=stage
# export NODE_ENV=stage
# export env=stage

alias gitroot='cd $(git rev-parse --show-toplevel)'

alias clr-clip='echo -n "" | pbcopy'

alias bfu='brew update && brew upgrade && brew cu -ac'
alias bfuc='brew update && brew upgrade && brew cu -acy && brew cleanup --prune 0'

# alias {python,py3,py}='python3'
# alias pip='pip3'
# alias {pip3-upgrade,pip-upgrade}='pip3 list --format=json --outdated | jq -r ".[].name" | xargs -n1 pip3 install -U'

alias sshnull='ssh -o "UserKnownHostsFile /dev/null"'

# alias {fzfh,fh,h}='history 0 | sort -rn | fzf | tee >(zsh)'
# alias hcat='history 0 | sort -rn | fzf | cat'
# alias f='fuck'

alias cdw='cd ~/Workspace'

alias calreset='launchctl stop com.apple.CalendarAgent && launchctl start com.apple.CalendarAgent'

alias persrepo='git config user.name "Yusuf Kursad Kaya" && git config user.email "ykursadkaya@gmail.com" && git config user.signingkey EB3FBC405E0C2A2B'

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

# eval $(thefuck --alias)

HISTFILE="$HOME/.zsh_history"
HISTSIZE=1000000000
SAVEHIST=10000000
setopt BANG_HIST                 # Treat the '!' character specially during expansion.
# setopt EXTENDED_HISTORY          # Write the history file in the ":start:elapsed;command" format.
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS          # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a line previously found.
setopt HIST_IGNORE_SPACE         # Don't record an entry starting with a space.
setopt HIST_SAVE_NO_DUPS         # Don't write duplicate entries in the history file.
setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.
setopt HIST_VERIFY               # Don't execute immediately upon history expansion.

disable r

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
