#!/bin/bash
mkdir currentPlasmaConfig

#plasma config files
cp -r ~/.config/plasma-org.kde.plasma.desktop-appletsrc currentPlasmaConfig/
cp -r ~/.config/plasmarc currentPlasmaConfig/
cp -r ~/.config/plasmashellrc currentPlasmaConfig/
cp -r ~/.config/kdeglobals currentPlasmaConfig/

#kwin
cp -r ~/.config/kwinrc currentPlasmaConfig/
cp -r ~/.config/kwinrulesrc currentPlasmaConfig/

#dolphin config
cp -r ~/.config/dolphinrc currentPlasmaConfig/

#config session desktop
cp -r ~/.config/ksmserverrc currentPlasmaConfig/
  
#config input devices
cp -r ~/.config/kcminputrc currentPlasmaConfig/ 

#shortcuts
cp -r ~/.config/kglobalshortcutsrc currentPlasmaConfig/

#konsole config
cp -r ~/.config/konsolerc currentPlasmaConfig/

#kscreenlocker config
cp -r ~/.config/kscreenlockerrc currentPlasmaConfig/

#krunner config
cp -r ~/.config/krunnerrc currentPlasmaConfig/

#plasma themes and widgets
cp -r ~/.local/share/plasma currentPlasmaConfig/

#wallpapers
cp -r ~/.local/share/wallpapers currentPlasmaConfig/

#autostart
cp -r ~/.config/autostart currentPlasmaConfig/

#icons
cp -r ~/.local/share/icons currentPlasmaConfig/

#color-schemes
cp -r ~/.local/share/color-schemes currentPlasmaConfig/
