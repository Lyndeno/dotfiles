#!/usr/bin/env bash

# gamemode is not always needed
if ! command -v gamemode &> /dev/null
then
	exit 0
fi

gm_status=$(gamemoded -s)

if [ "$gm_status" == "gamemode is inactive" ]
then
    exit 0
else
    echo "Gamemode On"
fi
