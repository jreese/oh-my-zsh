
# Custom directory commands
mkcd () { mkdir -p $1; builtin cd $1 }
mkpu () { mkdir -p $1; pu $1 }
recd () { PWDTMP=$PWD && cd .. && mv $PWDTMP $1 && cd $1 }

