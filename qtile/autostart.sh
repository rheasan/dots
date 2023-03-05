#!/usr/bin/bash

# start picom
picom -f &

# set background
/home/shreyas/.fehbg

# start nm-applet
nm-applet &

# start polybar
# $HOME/.config/polybar/launch.sh

xbindkeys -f /home/shreyas/.config/.xbindkeysrc
