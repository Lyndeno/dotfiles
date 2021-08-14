#!/bin/zsh

export CONFIG_KERNEL=$(uname)

# Set up vars for OS-specific config
if [[ "Darwin" == $CONFIG_KERNEL ]]
then
	export CONFIG_DISTRO=macOS
elif [[ "Linux" == $CONFIG_KERNEL ]]
then
	export CONFIG_DISTRO=$(cat /etc/os-release | grep NAME= | awk -F= '{print $2}' | head -n 1 | sed -e 's/\"//g')
fi


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

if [[ "macOS" == $CONFIG_DISTRO ]]
then
	eval "$(/opt/homebrew/bin/brew shellenv)"
fi
#. "$HOME/.cargo/env"
