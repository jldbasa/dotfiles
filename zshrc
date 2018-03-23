# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="lambdamod"

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
#plugins=(git nyan vi-mode bundler)
plugins=(git nyan bundler heroku tmux git-flow kubectl)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/sbin:/home/jerome/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/bin:/usr/games:~/src/dotfiles/scripts

# recommended by brew doctor
export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"

export PATH="$HOME/Library/Python/2.7/bin:$PATH"

# rust
export PATH="$HOME/.cargo/bin:$PATH"

# source ~/.bin/tmuxinator.zsh
source ~/src/dotfiles/zsh/env
source ~/src/dotfiles/zsh/config
source ~/src/dotfiles/zsh/aliases
source ~/src/dotfiles/zshrc_local
source ~/src/dotfiles/falcon/2018-03-12_falcon_exa-colors

export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export DISABLE_AUTO_TITLE=true

# Set to vi mode
# set -o vi

export PATH="$HOME/.bin:$PATH"

export PATH="$PATH:/usr/local/lib/node_modules"
# source $(brew --prefix nvm)/nvm.sh
# eval "$(rbenv init - zsh --no-rehash)"
eval "$(rbenv init -)"
# . /Users/jerome/.nix-profile/etc/profile.d/nix.sh

bindkey "^R" history-incremental-search-backward
export PATH="/usr/local/opt/elasticsearch@2.4/bin:$PATH"

