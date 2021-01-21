#!/usr/bin/env bash

SOURCE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CONFIG_DIR=$SOURCE_DIR"/dotconfig"
LOCAL_DIR="$HOME/.config"

sudo ln -sfv "$SOURCE_DIR/hosts"       "/etc/hosts"
ln -sfv "$SOURCE_DIR/.bashrc"          "$HOME/.bashrc"

ln -sfv "$CONFIG_DIR/dunst/dunstrc"    "$LOCAL_DIR/dunst/dunstrc"
ln -sfv "$CONFIG_DIR/i3/config"        "$LOCAL_DIR/i3/config"
ln -sfv "$CONFIG_DIR/i3status/config"  "$LOCAL_DIR/i3status/config"

