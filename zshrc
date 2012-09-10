# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git rails3 nyan vi-mode)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/home/jerome/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games

source ~/bin/dotfiles/zsh/env
source ~/bin/dotfiles/zsh/config
source ~/bin/dotfiles/zsh/aliases

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# Python Settings
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8


# Terminal 256 colors
export TERM="xterm-256color"
