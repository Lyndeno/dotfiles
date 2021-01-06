#!/usr/bin/env bash
conn_state=$(piactl get connectionstate)

if [[ "$conn_state" = "Connected" ]]
then
    output_text=$(piactl get region)
elif [[ "$conn_state" = "Disconnected" ]]
then
    output_text=""
else
    output_text=$conn_state
fi

echo '{"text": "'$output_text'", "alt": "'$(piactl get connectionstate)'", "class": "'$(piactl get connectionstate)'"}' | jq --unbuffered --compact-output