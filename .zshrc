# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git cabal pip python vi-mode)

# User configuration

TMUX=
export PATH="~/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

export TERM=xterm-256color

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

export EDITOR='vim'

bindkey '^R' history-incremental-search-backward

alias vim="/usr/local/bin/nvim"
alias tls="/usr/local/bin/tmux list-sessions"
alias ta="/usr/local/bin/tmux attach-session -t"
alias grep="grep --color --exclude tags --exclude-dir build -nI"
alias p3="python3"
alias p2="python2"
