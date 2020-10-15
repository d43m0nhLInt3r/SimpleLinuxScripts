#!/bin/bash
git clone https://github.com/ThatOneCalculator/NerdFetch.git
cd NerdFetch/
mkdir ~/.local/bin
install -m755 nerdfetch ~/.local/bin/nerdfetch
cd ..
rm -rf NerdFetch/
echo "nerdfetch" >> ~/.zshrc
echo "Done"
