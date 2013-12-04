
# Keybindings for Gnome-Terminal


# Up/Down Search
bindkey '\e[A' up-line-or-search
bindkey '\e[B' down-line-or-search

# Delete
bindkey '[3~' delete-char

# Home/End
bindkey 'OH' beginning-of-line
bindkey 'OF' end-of-line
bindkey '[1~' beginning-of-line
bindkey '[4~' end-of-line

# Ctrl Left/Right (^[[1;5D & ^[[1;5C)
bindkey '[1;5D' backward-word
bindkey '[1;5C' forward-word
bindkey 'OD' backward-word
bindkey 'OC' forward-word


