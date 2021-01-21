#!/usr/bin/env bash

SOURCE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CONFIG_DIR=$SOURCE_DIR"/dotconfig"
LOCAL_DIR="$HOME/.config"

ln -sfv "$CONFIG_DIR/dunst/dunstrc"    "$LOCAL_DIR/dunst/dunstrc"
ln -sfv "$CONFIG_DIR/fish/config.fish" "$LOCAL_DIR/fish/config.fish"
ln -sfv "$CONFIG_DIR/i3/config"        "$LOCAL_DIR/i3/config"
ln -sfv "$CONFIG_DIR/i3status/config"  "$LOCAL_DIR/i3status/config"
ln -sfv "$CONFIG_DIR/mimeapps.list"    "$LOCAL_DIR/mimeapps.list"

ln -sfv "$SOURCE_DIR/.bashrc"          "$HOME/.bashrc"

sudo ln -sfv "$SOURCE_DIR/hosts"       "/etc/hosts"
