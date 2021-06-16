#!/bin/zsh

export _JAVA_AWT_WM_NONREPARENTING=1
export MOZ_ENABLE_WAYLAND=1
export XDG_CURRENT_DESKTOP=sway
export SPOTIFYD_CLIENT_ID=a288d643e27c442da477624b7c5a57b4

# Default applications
export EDITOR=vim
export BROWSER=firefox
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

export PATH="$PATH:$HOME/.esp/xtensa-lx106-elf/bin"
export PATH="$PATH:$HOME/.local/bin"
export IDF_PATH=~/.esp/ESP8266_RTOS_SDK

if [[ "Lyndons-Mac-mini.local" == "$(hostname)" ]]
then
	eval "$(/opt/homebrew/bin/brew shellenv)"
fi
#. "$HOME/.cargo/env"
