#!/bin/sh

# requires lm_sensors
tempInfo="$(sensors -A |grep -i 'Package id 0:')"

prefix="Package id 0:  +"

temp=${tempInfo%  \(*}
temp=${temp#"$prefix"}

echo ${temp}