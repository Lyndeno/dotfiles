#!/usr/bin/env bash
gm_status=$(gamemoded -s)

if [ "$gm_status" == "gamemode is inactive" ]
then
    exit 0
else
    echo "Gamemode On"
fi