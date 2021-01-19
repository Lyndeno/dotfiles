#!/usr/bin/env bash
notify_title=" Package Updates"
notify-send "$notify_title" "Checking for updates..."
no_updates=$(checkupdates | wc -l)

if (("$no_updates" == "0"))
then
    notify-send "$notify_title" "System up to date"
    exit 0
else
    notify-send "$notify_title" "$no_updates updates are available for install, run 'paru' to update."
    echo $no_updates
fi