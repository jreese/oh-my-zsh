
# Environment
if [ -z "$REESEPROFILE" ]; then
	source ${HOME}/.profile
fi

# Aliases
if [ -f ${HOME}/.alias ]; then
	source ${HOME}/.alias
fi

# System Specific zshrc
if [ -f ${HOME}/.zsh_local ]; then
    source ${HOME}/.zsh_local
fi

