#!/bin/bash
# file to install Bépolar for my local config
# including the position bug related to Ubuntu/Gnome
# usefull for deploying new version of Bépolar

path=$(dirname "$0")
$path/reset_xkb.sh

# Compile lastest vertion and install
sudo xkalamine install Bépolar.yml
sudo xkalamine install Bépolar2.yml

sudo python3 $path/kalamine_clean.py

# Copy files in `xkb` directory for quick install
path_config=/usr/share/X11/xkb

sudo cp $path_config/rules/evdev.xml    $path/../xbk/rules/evdev.xml
sudo cp $path_config/rules/base.xml     $path/../xbk/rules/base.xml
sudo cp $path_config/symbols/fr         $path/../xbk/symbols/fr
