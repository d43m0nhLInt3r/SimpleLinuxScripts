#!/bin/bash
if [ "$1" == "-h" ]; then
	echo ""
	echo " ========================================================= "
	echo " \                    shellSwitcher.sh                   / "
	echo " \              Switch between ZSH and Bash              / "
	echo " \                Created by d43m0nhLInt3r               / "
	echo " ========================================================= "
	echo ""
	echo "Usage: sudo ./shellSwitcher.sh"
	echo "https://github.com/d43m0nhLInt3r/SimpleLinuxScripts"
  exit 0
fi
i=$(zenity --column 'ZSH or Bash?' --list "ZSH" "Bash")
if [ "$i" == "ZSH" ]; then
chsh -s /bin/zsh
elif [ "$i" == "Bash"]: then 
chsh -s /bin/bash
else 
echo "Error"
fi
echo "Done"