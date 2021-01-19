#!/usr/bin/env bash
notify-send " Package Updates" "Checking for updates..."
no_updates=$(checkupdates | wc -l)

if (("$no_updates" == "0"))
then
    exit 0
else
    notify-send " Package Updates" "$no_updates updates are available for install, run 'paru' to update."
    echo $no_updates
fi