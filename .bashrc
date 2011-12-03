# +---------------------------------------------------------------------------+
# | Colors                                                                    |
# +---------------------------------------------------------------------------+
export TERM=xterm-color
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export CLICOLOR=1 

# ls colors, see: http://www.linux-sxs.org/housekeeping/lscolors.html
export LS_COLORS='di=1:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rb=90'  #LS_COLORS is not supported by the default ls command in OS-X

# Setup some colors to use later in interactive shell or scripts
export COLOR_NC='\e[0m' # No Color
export COLOR_WHITE='\e[1;37m'
export COLOR_BLACK='\e[0;30m'
export COLOR_BLUE='\e[0;34m'
export COLOR_LIGHT_BLUE='\e[1;34m'
export COLOR_GREEN='\e[0;32m'
export COLOR_LIGHT_GREEN='\e[1;32m'
export COLOR_CYAN='\e[0;36m'
export COLOR_LIGHT_CYAN='\e[1;36m'
export COLOR_RED='\e[0;31m'
export COLOR_LIGHT_RED='\e[1;31m'
export COLOR_PURPLE='\e[0;35m'
export COLOR_LIGHT_PURPLE='\e[1;35m'
alias colorslist="set | egrep 'COLOR_\w*'"  # Lists all the colors, uses vars in .bashrc_non-interactive


# +---------------------------------------------------------------------------+
# | Prompt                                                                    |
# +---------------------------------------------------------------------------+
# export PS1="\[${COLOR_GRAY}\]\u@\h \[${COLOR_GREEN}\]\w > \[${COLOR_NC}\]"  # Primary prompt with user, host, and path 
export PS1="\[${COLOR_GREEN}\]\w > \[${COLOR_NC}\]"  # Primary prompt with only a path
export PS2='> '    # Secondary prompt
export PS3='#? '   # Prompt 3
export PS4='+'     # Prompt 4


# +---------------------------------------------------------------------------+
# | Alias                                                                     |
# +---------------------------------------------------------------------------+

alias vi='vim'

# 3-chars nice sweet git aliases
alias gad='git add'
alias gbr='git branch'
alias gcm='git commit'
alias gcm-amend='gcm --amend'
alias gco='git checkout'
alias gdf='git diff'
alias gdf-cached='gdf --cached'
alias gfe='git fetch'
alias gfe-origin='gfe origin'
alias glg='git log'
alias gmv='git mv'
alias gph='git push'
alias gpl='git pull --rebase'
alias gpl-rebase='git pull --rebase'
alias gpl-merge='git pull'
alias gph-origin-master='gph origin master'
alias gpk='git cherry-pick'
alias grb='git rebase'
alias grb-abort='grb --abort'
alias grb-continue='grb --continue'
alias grb-origin-master='grb origin/master'
alias grb-master='grb master'
alias grm='git rm'
alias gsh='git stash'
alias gsh-pop='git stash pop'
alias gst='git status'
alias gui='gitg'


# +---------------------------------------------------------------------------+
# | Misc                                                                      |
# +---------------------------------------------------------------------------+

# Set bash editor to 'vi'
set -o vi

# Editor
export EDITOR='vim'
