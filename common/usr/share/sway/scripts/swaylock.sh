#!/bin/bash

# This script takes a screenshot of current output and adds a blur and vignette to it

cd $HOME/Pictures/wallpapers
wallpaper=$(ls|sort -R|tail -1)
# Delete existing image
rm lockscreen.png
 
#Adds a blur and vignette
ffmpeg -i $wallpaper -vf "gblur=sigma=10, vignette=PI/5" -c:a copy lockscreen.png
 
#Uses output image with Swaylock
swaylock \
--image lockscreen.png \
--daemonize
