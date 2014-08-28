
# format titles for screen and rxvt
function screen_title() {
  # escape '%' chars in $1, make nonprintables visible
  a=${(V)1//\%/\%\%}

  a=$(print -Pn "%20>...>$a" | tr -d "\n")
  print -Pn "\ek$a:$3\e\\"      # screen title (in ^A")
}

# precmd is called just before the prompt is printed
function precmd() {
  screen_title "zsh" "$USER@%m" "%55<...<%~"
}

# preexec is called just before any command line is executed
function preexec() {
  screen_title "$1" "$USER@%m" "%35<...<%~"
}

