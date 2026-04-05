#!/bin/bash

WALLPAPER_DIR="$HOME/Wallpapers"
SYMLINK_PATH="$HOME/.config/hypr/current_wallpaper"

cd "$WALLPAPER_DIR" || exit 1

IFS=$'\n'

# pick wallpaper (rofi)
SELECTED_WALL=$(for a in $(ls -t *.jpg *.png *.jpeg *.gif 2>/dev/null); do
  echo -en "$a\0icon\x1f$WALLPAPER_DIR/$a\n"
done | rofi -dmenu -p "Wallpaper")

[ -z "$SELECTED_WALL" ] && exit 1

SELECTED_PATH="$WALLPAPER_DIR/$SELECTED_WALL"

# set wallpaper
awww img "$SELECTED_PATH" \
  --transition-type wipe \
  --transition-pos 0.5,0.5 \
  --transition-duration 4

# generate theme
matugen image "$SELECTED_PATH" --source-color-index 0

# save current wallpaper
echo "$SELECTED_PATH" > "$SYMLINK_PATH"
sync

# reload notification theme
swaync-client -rs 2>/dev/null