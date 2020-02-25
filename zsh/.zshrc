test

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/willvarney/.oh-my-zsh
ZSH_THEME="robbyrussell"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  tmux
)

source $ZSH/oh-my-zsh.sh

# Set GOPATH
export GOPATH=$HOME
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

# Setup VS Code shortcut
alias vscode='code'

function code {
    if [[ $# = 0 ]]
    then
        open_command -a "Visual Studio Code"
    else
        local argPath="$1"
        [[ $1 = /* ]] && argPath="$1" || argPath="$PWD/${1#./}"
        open_command -a "Visual Studio Code" "$argPath"
    fi
}

alias k="kubectl"
alias zshreload="source ~/.zshrc && source ~/.zshenv"
alias tmuxreoload="source ~/.tmux.conf"
alias gbr="git branch | grep -v "master" | xargs git branch -D"
alias hpr="hub pull-request -r eeveebank/platform-engineering"

plugins=(git brew history kubectl taskwarrior zsh-completions zsh-autosuggestions)
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/helm@2/bin:$PATH"
