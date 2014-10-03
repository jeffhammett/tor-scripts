#!/bin/bash

# Takes input of log filename

log=$1

: ${log:="access.log"}

if [ -f exit-addresses ]
then
        rm exit-addresses
fi

wget https://check.torproject.org/exit-addresses

grep -o '[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}' exit-addresses | while read line; do grep "$line" /var/log/apache2/$log; done
