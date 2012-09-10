# source the users bashrc if it exists
if [ -f "${HOME}/.bashrc" ] ; then
  source "${HOME}/.bashrc"
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

# +---------------------------------------------------------------------------+
# | Hello Message                                                             |
# +---------------------------------------------------------------------------+
echo -e "Kernel Information: " `uname -smr`
echo -e "${BGreen}`bash --version`${Color_Off}"
echo -ne "${Green}Uptime: "; uptime
echo -ne "${Green}Server time is: "; date
echo -ne "${Color_Off}";
