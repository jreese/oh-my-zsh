
# format titles for screen and rxvt
function screen_title() {
  # escape '%' chars in $1, make nonprintables visible
  a=${(V)1//\%/\%\%}

  case $TERM in
  screen*)
    a=$(print -Pn "%20>...>$a" | tr -d "\n")
    print -Pn "\ek$a:$3\e\\"      # screen title (in ^A")
    ;;
  xterm*|rxvt)
    a=$(print -Pn "%40>...>$a" | tr -d "\n")
    print -Pn "\e]2;$2 | $a:$3\a" # plain xterm title
    ;;
  esac
}

# precmd is called just before the prompt is printed
function precmd() {
  screen_title "zsh" "$USER@%m" "%55<...<%~"
}

# preexec is called just before any command line is executed
function preexec() {
  screen_title "$1" "$USER@%m" "%35<...<%~"
}

