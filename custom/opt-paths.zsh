# Automatically add subdirectories from ~/opt to the user's path.

if [ -d ~/opt ]
then
	for optdir in `ls ~/opt/`
	do
		optdirpath=~/opt/$optdir
		if [ -d "$optdirpath" ]
		then
			optdirsubpath=$optdirpath/bin
			if [ -d "$optdirsubpath" ]
			then
				export PATH=$PATH:$optdirsubpath
			else
				export PATH=$PATH:$optdirpath
			fi
		fi
	done
fi

