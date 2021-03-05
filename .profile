[[ -f ~/.bashrc ]] && . ~/.bashrc

export _JAVA_AWT_WM_NONREPARENTING=1
export MOZ_ENABLE_WAYLAND=1
export XDG_CURRENT_DESKTOP=sway

# Default applications
export EDITOR=vim
export BROWSER=firefox
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

export PATH="$PATH:$HOME/.esp/xtensa-lx106-elf/bin"
export IDF_PATH=~/.esp/ESP8266_RTOS_SDK
