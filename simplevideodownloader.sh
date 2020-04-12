#!/bin/bash
if [ "$1" == "-h" ]; then
	echo ""
	echo " ========================================================= "
	echo " \            SimpleVideoDownloader.sh  Script           / "
	echo " \             Download videos in best quality           / "
	echo " \                Created by d43m0nhLInt3r               / "
	echo " ========================================================= "
	echo ""
	echo "Usage: ./simplevideodownloader.sh"
	echo "Dependencies: zenity & youtube-dl"
	echo "https://github.com/d43m0nhLInt3r/SimpleLinuxScripts"
  exit 0
fi
LINK=$(zenity --entry --text=URL: --entry-text=example.com)
if [ -z "$LINK" ]
then
exit 0
fi
youtube-dl -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio' --merge-output-format mp4 --add-metadata -o "%(title)s.%(ext)s" $LINK


