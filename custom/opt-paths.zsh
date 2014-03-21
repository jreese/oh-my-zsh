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
				export PATH=$optdirsubpath:$PATH
			else
				export PATH=$optdirpath:$PATH
			fi
		fi
	done
fi

