#!/bin/bash
if [ "$1" == "-h" ]; then
	echo ""
	echo " ========================================================= "
	echo " \                   cloneRepositories.sh                / "
	echo " \          Clone my Repositories with this script       / "
	echo " \                Created by d43m0nhLInt3r               / "
	echo " ========================================================= "
	echo ""
	echo "Usage: sudo ./cloneRepositories.sh"
	echo "https://github.com/d43m0nhLInt3r/SimpleLinuxScripts"
  exit 0
fi
cd && cd Documents
git clone https://github.com/d43m0nhLInt3r/SimpleLinuxScripts & git clone https://github.com/d43m0nhLInt3r/Wallpaper & git clone https://github.com/d43m0nhLInt3r/dotfiles && echo "done" && exit 0
