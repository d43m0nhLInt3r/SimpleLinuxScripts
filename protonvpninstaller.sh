#!/bin/bash
if [ "$1" == "-h" ]; then
	echo ""
	echo " ========================================================= "
	echo " \                   protonvpninstaller.sh               / "
	echo " \      The simple way to install the ProtonVPN CLI      / "
	echo " \                Created by d43m0nhLInt3r               / "
	echo " ========================================================= "
	echo ""
	echo "Usage: sudo ./protonvpninstaller.sh"
	echo "https://github.com/d43m0nhLInt3r/SimpleLinuxScripts"
  exit 0
fi
[[ $EUID -ne 0 ]] && echo -e " ${RED}Error:${PLAIN} This script must be run as root!" && exit 1

	if [ -f /etc/redhat-release ]; then
	    release="centos"
	elif cat /etc/issue | grep -Eqi "debian" | grep -Eqi "ubuntu"; then
	    release="debian"
	elif cat /etc/issue | grep -Eqi "centos|red hat|redhat"; then
	    release="centos"
	elif cat /etc/issue | grep -Eqi "arch|manjaro"; then
            release="arch"
	elif cat /proc/version | grep -Eqi "debian" | grep -Eqi "ubuntu"; then
	    release="debian"
	elif cat /proc/version | grep -Eqi "centos|red hat|redhat"; then
	    release="centos"
	elif cat /proc/version | grep -Eqi "arch|manjaro"; then
            release="arch"
	fi


if [ $release == "debian" ]; then
		sudo apt install -y openvpn dialog python3-pip python3-setuptools
	elif [ $release == "centos" ]; then
		sudo dnf install -y openvpn dialog python3-pip python3-setuptools
	elif [ $release == "arch" ]; then
		sudo pacman -S openvpn dialog python-pip python-setuptools
	fi
pip3 list | grep "protonvpn" && echo "ProtonVPN seems to be installed!" && echo "trying to upgrade to a newer version..." && sudo pip3 install protonvpn-cli --upgrade && echo "done" && exit 0 
echo "ProtonVPN seems not to be installed" && echo "trying to install it now" && sudo pip3 install protonvpn-cli && echo "done" && echo "starting initialization" && sudo protonvpn init && exit 1
