
# build a package manually from AUR
aurhelper () { curl -s https://aur.archlinux.org/packages/${1:0:2}/$1/$1.tar.gz | /bin/tar -xz ; cd "$1"; vim -p *; makepkg -si ;}
