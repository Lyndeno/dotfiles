#!/usr/bin/env bash
PRIM_DISPLAY=$(xrandr | grep 2560x1440+ | awk '{print $1}')

xrandr --output $PRIM_DISPLAY --primary && notify-send " XWayland" "Primary X display set to $PRIM_DISPLAY"