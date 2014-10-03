#!/bin/bash

# requires wget and geoiplookup
# tested on Debian Wheezy

wget https://check.torproject.org/exit-addresses

grep -o '[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}' exit-addresses | while read -r line; do geoiplookup "$line"; done | grep Country | grep -v V6 | grep -v "Address not found" | sort | uniq -c | tee torcountrylist.txt

rm exit-addresses

