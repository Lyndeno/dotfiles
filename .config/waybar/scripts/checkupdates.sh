#!/usr/bin/env bash
no_updates=$(checkupdates | wc -l)

if (("$no_updates" == "0"))
then
    exit 0
else
    notify-send "Package Updates" "$no_updates updates are available"
    echo $no_updates
fi