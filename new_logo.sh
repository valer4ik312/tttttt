#!/bin/bash
if [[ "$1" == "" ]]
then
        echo No /24 subnet pointed
        echo Usage: $0 192.168.0
        exit 1
fi
for i in `seq 1 255`
do
        ping -c 1 -q -W 1 $1.$i >/dev/null 2>&1
        if [ $? == 0 ]
        then
                echo Host $1.$i found
        fi
done
