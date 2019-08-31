# live-wallpapers-scripts

Scripts for downloading and setting up video wallpapers from Wallpaper Engine in Linux. 

You need curl, unzip, mpv and devilspie as dependencies.

Usage:

./liveWallpaper.sh /path/to/wallpaper.mp4

When you wanna change your default wallpaper. Path gets saved to ~/.wallpapers by default and you can run it without parameters after setting it up.

./wallpaperGet.sh https://steamcommunity.com/sharedfiles/filedetails/?id=XXXXXXXXXX
OR
./wallpaperGet.sh XXXXXXXXXX

Where the URL or ID is from a video wallpaper from wallpaper engine.

Videos get extracted by default to ~/Wallpapers, create the folder first.
