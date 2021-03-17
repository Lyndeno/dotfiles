#!/usr/bin/env bash
display=$1
current=$(swaymsg -pt get_workspaces | grep focused | awk '{ print $2 }')
shift
for workspace in "$@"
do
    swaymsg workspace "$workspace", move workspace to "$display"
done
swaymsg workspace $current