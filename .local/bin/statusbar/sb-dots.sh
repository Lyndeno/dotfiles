#!/usr/bin/env bash
notify_title=" Dotfiles"
notify-send "$notify_title" "Checking for updates..."
yadm fetch
no_updates=$(yadm diff --stat origin/master | sed '$d' | wc -l)

if (("$no_updates" == "0"))
then
    notify-send "$notify_title" "Dotfiles up to date"
    exit 0
elif (("$no_updates" == "1"))
then
    notify-send "$notify_title" "$no_updates change ready, ready to push or pull."
    echo $no_updates
else
    notify-send "$notify_title" "$no_updates changes ready, ready to push or pull."
    echo $no_updates
fi