#!/bin/bash
cd currentPlasmaConfig/

#plasma config files
cp -rf plasma-org.kde.plasma.desktop-appletsrc ~/.config/ 
cp -rf plasmarc ~/.config/ 
cp -rf plasmashellrc ~/.config/ 
cp -rf kdeglobals ~/.config/ 

#kwin
cp -rf kwinrc ~/.config/ 
cp -rf kwinrulesrc ~/.config/ 

#dolphin config
cp -rf dolphinrc ~/.config/ 

#config session desktop
cp -rf ksmserverrc ~/.config/ 
  
#config input devices
cp -rf kcminputrc ~/.config/  

#shortcuts
cp -rf kglobalshortcutsrc ~/.config/ 

#konsole config
cp -rf konsolerc ~/.config/ 

#kscreenlocker config
cp -rf kscreenlockerrc ~/.config/ 

#krunner config
cp -rf krunnerrc ~/.config/ 

#autostart
cp -rf autostart/ ~/.config/ 

#plasma themes and widgets
cp -rf plasma/ ~/.local/share/ 

#wallpapers
cp -rf wallpapers/ ~/.local/share/ 

#icons
cp -rf icons/ ~/.local/share/ 

#color-schemes
cp -rf color-schemes/ ~/.local/share/

