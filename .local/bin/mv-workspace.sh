#!/usr/bin/env bash
current=$(swaymsg -pt get_workspaces | grep focused | awk '{ print $2 }')
swaymsg workspace "$1", move workspace to "$2"
swaymsg workspace $current