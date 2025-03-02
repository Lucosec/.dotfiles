#!/bin/sh

[[ -e /usr/bin/paru ]] || printf "\nERROR: Paru not found\n" || exit 1

paru -S hyprland alacritty nwg-look slurp mako emacs-wayland hyprpaper waybar openrgb grim slurp pavucontrol zen-browser-bin nautilus scrcpy gamescope wofi hyprutils eza bat fastfetch starship

[[ $? -eq 0 ]] && printf "\nSUCCESS!\n" && exit 1
