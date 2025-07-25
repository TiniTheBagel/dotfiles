#!/bin/bash
# This script manages the wallpaper
# Can be set to choose a wallpaper from a folder
# Images must be .png format
# Interacts with Hyprpaper & pywal

# How to use:
# ./wallpaper-daemon.sh [path-to-wallpaper.png] [-pywal args]

IMGPATH=$1
#DEFPATH='$HOME/.config/hypr/active.png'

# If statement checks if given directory and file is valid
# Prints an error message if invalid
if [ -f $IMGPATH ]; then
    echo "Setting image as: $IMGPATH"

    # Sets the image as the wallpaper with hyprpaper
    hyprctl hyprpaper reload ,"$IMGPATH"

    # Applies the images colorscheme using pywal
    wal -q $2 -i $IMGPATH

    # Copies the currect wallpaper to a directory to be used later
    # Sets the image as the default so it persists on reboot
    cp $IMGPATH $HOME/.config/hypr/active.png 
    
    # Restarts waybar with the correct colorscheme
    pgrep waybar >/dev/null 2>&1 && killall waybar
    (&> /dev/null waybar &)


else
    echo "Invalid file or directory"
    echo "(Hint: use only the .png format for the wallpaper)"
fi
