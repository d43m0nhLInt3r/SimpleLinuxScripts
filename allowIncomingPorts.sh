#!/bin/bash
if [ "$1" == "-h" ]; then
	echo ""
	echo " ========================================================= "
	echo " \                  allowIncomingPorts.sh                / "
	echo " \     Allow Incoming Connections to specified Ports     / "
	echo " \                Created by d43m0nhLInt3r               / "
	echo " ========================================================= "
	echo ""
	echo "Usage: ./allowIncomingPorts.sh"
	echo "Dependencies: zenity & ufw"
	echo "https://github.com/d43m0nhLInt3r/SimpleLinuxScripts"
  exit 0
fi
IP=$(zenity --entry --name=allowIncomingPort --text=IP: --entry-text=127.0.0.1)
FP=$(zenity --entry --name=allowIncomingPort --text=from Port: --entry-text=20)
TP=$(zenity --entry --name=allowIncomingPort --text=to Port: --entry-text=22)
P=$(zenity --column 'UDP or TCP?' --list "udp" "tcp")
if [ "$P" == "udp" ]; then
sudo ufw allow from "$IP" to any port "$FP":"$TP" proto "$P"
elif [ "$P" == "tcp" ]; then
sudo ufw allow from "$IP" to any port "$FP":"$TP" proto "$P"
else
echo "Error"
fi
echo "Done"
