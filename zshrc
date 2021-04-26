# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

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

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#73747d"

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

plugins=(git git-flow fzf heroku kube-ps1 kubectl tmux web-search taskwarrior zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

#PROMPT='$(kube_ps1)'$PROMPT

# Customize to your needs...
export PATH=/sbin:/home/jerome/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/bin:/usr/games:~/src/dotfiles/scripts

# bat
# export BAT_THEME="GitHub"

# recommended by brew doctor
export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"

export PATH="$HOME/Library/Python/2.7/bin:$PATH"

# rust
export PATH="$HOME/.cargo/bin:$PATH"

# helm@2
export PATH="/usr/local/opt/helm@2/bin:$PATH"

# helm@2
export PATH="$HOME/bin:$PATH"

# krew
export PATH="${PATH}:${HOME}/.krew/bin"

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
export EDITOR=nvim

# Set to vi mode
set -o vi

# source $(brew --prefix nvm)/nvm.sh
# eval "$(rbenv init - zsh --no-rehash)"
# eval "$(rbenv init -)"
# . /Users/jerome/.nix-profile/etc/profile.d/nix.sh

bindkey "^R" history-incremental-search-backward

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# z
. /usr/local/etc/profile.d/z.sh

# ZLE_RPROMPT_INDENT=0

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export PATH="/usr/local/opt/mysql-client@5.7/bin:$PATH"
export PATH="/usr/local/opt/redis@4.0/bin:$PATH"
export PATH="/usr/local/opt/postgresql@9.6/bin:$PATH"

. /usr/local/opt/asdf/asdf.sh
# export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"

# gcloud
export CLOUDSDK_PYTHON="/usr/local/opt/python@3.8/libexec/bin/python"
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"

# temp fro helm3 migration

#export HELM_V3_CONFIG=/Users/jerome/src/helm3-migration/develop/helm3
#export HELM_V3_DATA=/Users/jerome/src/helm3-migration/develop/helm3


