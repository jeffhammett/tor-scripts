#!/bin/bash

# takes the name of the apache2 log to check as input

grep "Mozilla/5.0 (Windows NT 6.1; rv:24.0) Gecko/20100101 Firefox/24.0" /var/log/apache2/$1 
