#!/bin/bash
if [ "$1" == "-h" ]; then
	echo ""
	echo " ========================================================= "
	echo " \            SimpleMP3Downloader.sh  Script             / "
	echo " \             Download music in best quality            / "
	echo " \                Created by d43m0nhLInt3r               / "
	echo " ========================================================= "
	echo ""
	echo "Usage: ./simplemp3downloader.sh"
	echo "Dependencies: zenity & youtube-dl"
	echo "https://github.com/d43m0nhLInt3r/SimpleLinuxScripts"
  exit 0
fi
LINK=$(zenity --entry --name=SimpleMP3Downloader --text=URL: --entry-text=example.com)
if [ -z "$LINK" ]
then
exit 0
fi
youtube-dl --embed-thumbnail --add-metadata --extract-audio --audio-format mp3 -o "%(title)s.%(ext)s" $LINK

