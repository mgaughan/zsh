# Path
export ZSH=/Users/mgaughan/.oh-my-zsh

# Theme
ZSH_THEME="mgaughan"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Plugins
plugins=(git)

# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

source $ZSH/oh-my-zsh.sh

# Aliases
alias subl="'/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl'"
alias zshconfig="subl ~/.zshrc"
alias ohmyzsh="subl ~/.oh-my-zsh"
alias source_bash="source $ZSH/oh-my-zsh.sh"
alias show_files="defaults write com.apple.finder AppleShowAllFiles YES"
alias hide_files="defaults write com.apple.finder AppleShowAllFiles NO"
alias desk="cd ~/Desktop"
