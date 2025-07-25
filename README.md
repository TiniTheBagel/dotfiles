# TiniBobini's Dotfiles
These are my simple dotfiles for my hyprland linux systems.
Colorscemes are automatically generated and applied based on the wallpaper.
## Wallpaper Daemon
```
./wallpaper-daemon.sh [wallpaper directory.png] [-pywall args]
```
I created a custom script named 'wallpaper-daemon.sh' that will automatically change the wallpaper using hyprpaper and change the colorscheme using pywal. 
The wallpaper will be stored in the [~/.config/hypr/] directory as active.png (which can be changed in the script). Hyprpaper and pywall will then use that image to make the wallpaper and colorscheme persist on reboot.

One limitation of the script is it is restricted to using only one monitor as I only use one monitor. But feel free to modify the default script to add multiple-monitor support!

## Future Changes
* I want to add dual-monitor support to the wallpaper daemon eventually.
* I also want to add support to randomize the wallpaper with the wallpaepr daemon.
* I want to tweak the way colors are applied to some applications such as wofi. I also want to add pywal support for more applications.
