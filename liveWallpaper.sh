#!/bin/bash

CONFIG="$HOME/.wallpaper"

cd "$( cd "$(dirname "$0")" ; pwd -P )"

if [ "$1" ]; then
    echo "$1" > $HOME/.wallpaper;
fi
WP_PATH=$(cat $CONFIG)


mpv "$WP_PATH" --no-audio --loop --no-input-default-bindings --no-osc --title="MPV Wallpaper" --hwdec=vaapi --vo=opengl > /dev/null 2>&1 &
devilspie mpv.ds
