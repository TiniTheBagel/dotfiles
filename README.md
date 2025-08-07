# TiniBobini's Dotfiles
These are my simple dotfiles for my arch *(btw)* linux systems.
Colorscemes are automatically generated and applied based on the wallpaper.
## Wallpaper Daemon
```
./wallpaper-daemon.sh [wallpaper directory.png] [-pywall args]
```
I created a custom script named 'wallpaper-daemon.sh' that will automatically change the wallpaper using hyprpaper and change the colorscheme using pywal. 
The wallpaper will be stored in the [~/.config/hypr/] directory as active.png (which can be changed in the script). Hyprpaper and pywall will then use that image to make the wallpaper and colorscheme persist on reboot.

One limitation of the script is it is restricted to using only one monitor as I only use one monitor. But feel free to modify the default script to add multiple-monitor support!

## Credits
Some of the websites and YouTube videos I used that helped me learn to rice.
### Youtube Videos
* https://youtu.be/O5VVdFWJcak?si=fZOYCqouLTQOqsta (helped me get familiar with pywal)
* https://youtu.be/uD_1Ht3YFzU?si=eR_1JlsuSZ09VwGM (helped me find wallpapers)
* https://youtu.be/jFz5gLqv-FM?si=_uTmguCra0-lSIiO (helped me find the customizations I like)
* https://youtu.be/2CP_9-jCV6A?si=vvX4cnYVG-LjRkeM (helped me get familiar with hyprland)
### Website(s)
* https://artvee.com (where I found most of my wallpapers)

## Future Changes
* I want to add dual-monitor support to the wallpaper daemon eventually.
* I also want to add support to randomize the wallpaper with the wallpaepr daemon.
* I want to tweak the way colors are applied to some applications such as wofi. I also want to add pywal support for more applications.
