# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/jerome/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
# ZSH_THEME="lambdamod"
#source ~/.promptline.sh
ZSH_THEME=powerlevel10k/powerlevel10k

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

plugins=(git git-flow fzf heroku kube-ps1 kubectl tmux web-search taskwarrior)

source $ZSH/oh-my-zsh.sh

#PROMPT='$(kube_ps1)'$PROMPT

# Customize to your needs...
export PATH=/sbin:/home/jerome/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/bin:/usr/games:~/src/dotfiles/scripts

# recommended by brew doctor
export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"

export PATH="$HOME/Library/Python/2.7/bin:$PATH"

# rust
export PATH="$HOME/.cargo/bin:$PATH"

# kube-ps1 plugin
KUBE_PS1_SYMBOL_ENABLE=false
KUBE_PS1_PREFIX=''
KUBE_PS1_SUFFIX=''


# source ~/.bin/tmuxinator.zsh
source ~/src/dotfiles/zsh/env
source ~/src/dotfiles/zsh/config
source ~/src/dotfiles/zsh/aliases
source ~/src/dotfiles/zshrc_local
# source ~/src/dotfiles/falcon/2018-03-12_falcon_exa-colors

export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export DISABLE_AUTO_TITLE=true

# Set to vi mode
set -o vi

export PATH="$HOME/bin:$PATH"

export PATH="$PATH:/usr/local/lib/node_modules"
# source $(brew --prefix nvm)/nvm.sh
# eval "$(rbenv init - zsh --no-rehash)"
eval "$(rbenv init -)"
# . /Users/jerome/.nix-profile/etc/profile.d/nix.sh

bindkey "^R" history-incremental-search-backward

export PATH="/usr/local/opt/elasticsearch@2.4/bin:$PATH"
export PATH="/Users/jerome/Library/Python/3.6/bin:$PATH"

export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# byobu
export BYOBU_PREFIX=/usr/local

# thefuck
# eval $(thefuck --alias)

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# z
. /usr/local/etc/profile.d/z.sh

# ZLE_RPROMPT_INDENT=0
