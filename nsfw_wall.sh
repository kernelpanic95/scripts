#!/usr/bin/env bash

WALLPAPER_DIR="/home/kernelpanic/git/walls/nsfw"
RANDOM_PICTURE=$(ls $WALLPAPER_DIR -1 | shuf -n 1)

gsettings set org.gnome.desktop.background picture-uri-dark "file://$WALLPAPER_DIR/$RANDOM_PICTURE"
gsettings set org.gnome.desktop.background picture-uri "file://$WALLPAPER_DIR/$RANDOM_PICTURE"

notify-send "New wallpeper set" "$RANDOM_PICTURE"
