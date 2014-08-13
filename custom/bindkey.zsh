
# vi-mode re-bindings

bindkey '^r' history-incremental-search-backward
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^w' backward-kill-word
bindkey '^k' kill-line
bindkey '^u' backward-kill-line

bindkey 'a' accept-and-hold
bindkey 'g' get-line
bindkey 'h' run-help
bindkey 'q' push-line
bindkey 's' sudo-command-line
