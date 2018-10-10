
# Exports
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/fabiocatalao/.vimpkg/bin
export PATH="/usr/local/sbin:$PATH"

# ZSH Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
    export EDITOR='mvim'
fi

# NVM 
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

# Iterm2
source ~/.iterm2_shell_integration.zsh

# Tmuxinator
source ~/.bin/tmuxinator.zsh

# Antigen
source /usr/local/share/antigen/antigen.zsh

# Load the oh-my-zsh's library
antigen use oh-my-zsh

antigen bundle brew
antigen bundle brew cask
antigen bundle git
antigen bundle git-extras
antigen bundle tmu
antigen bundle tmuxinator
antigen bundle command-not-found
antigen bundle tmux
antigen bundle tig
antigen bundle brew

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-history-substring-search

antigen bundle rupa/z
antigen bundle supercrabtree/k
antigen bundle djui/alias-tips

# For SSH, starting ssh-agent is annoying
antigen bundle ssh-agent

# Develop
antigen bundle vagrant
antigen bundle github

# Node Plugins
antigen bundle coffee
antigen bundle node
antigen bundle npm
antigen bundle nvm

# PHP
antigen bundle php

# OS specific plugins
antigen bundle gem 
antigen bundle osx

# Themes
antigen theme candy

# Tell antigen that you're done
antigen apply
