# .bashrc
# Base on @see https://github.com/rkirti/bashrc/blob/master/.bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# User Info
export NICKNAME="Kaz"

# colors for interactive shells
source .shells/bashrc.colors

# default settings for interactive shells
source .shells/bashrc.defaults

# aliases for interactive shells
source .shells/bashrc.alias

# functions for interactive shells
source .shells/bashrc.functions


# Welcome message
echo "#####################################################"
echo
echo -ne "`greetings`, $NICKNAME! It's "; date '+%A, %B %-d %Y'
echo
echo -e "And now your moment of Zen:"; fortune # Required: 'sudo yum install fortune-mod'
echo
echo "[Hardware Information] :"
free -m
echo
echo "[Top 10 Heavy Process (Order By Memory DESC)] :"
ps aux --sort -rss | head -11 | awk '{ printf "%-2s %-6s %-6s %12s (KB)     %-30s\n", (NR-1), $3, $4, $6, $11 }'
echo
echo "#####################################################"