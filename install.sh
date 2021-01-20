#!/usr/bin/env bash

SOURCE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
SOURCE_DIR=$SOURCE_DIR"/dotconfig"
LOCAL_DIR="$HOME/.config"

ln -sfv "$SOURCE_DIR/dunst/dunstrc" "$LOCAL_DIR/dunst/dunstrc"
ln -sfv "$SOURCE_DIR/fish/config.fish" "$LOCAL_DIR/fish/config.fish"
ln -sfv "$SOURCE_DIR/i3/config" "$LOCAL_DIR/i3/config"
ln -sfv "$SOURCE_DIR/i3status/config" "$LOCAL_DIR/i3status"
ln -sfv "$SOURCE_DIR/mimeapps.list" "$LOCAL_DIR/mimeapps.list"
