#!/usr/bin/env bash
vm_state=$(virsh --connect qemu:///system domstate Windows10)

if [ "$vm_state" == "shut off" ]
then
    exit 0
else
    echo ${vm_state^}
fi