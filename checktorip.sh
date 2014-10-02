#!/bin/bash

# Takes input of IP, port and log filename. IP and port are those of the server that you would like to check Tor access to

IP=$1
port=$2
log=$3
: ${port:="80"}
: ${log:="access.log"}

string="TorBulkExitList.py?ip=$IP&port=$port"

if [ -f $string ]
then
        rm $string
fi

wget "https://check.torproject.org/cgi-bin/$string"

while read string; do grep "$string" /var/log/apache2/$log; done < $string
