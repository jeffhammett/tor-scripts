tor-log-check
=============

Scripts to check Apache log files on Debian for access via the Tor network.

=============

_checktoragent.sh_

Takes the name of the log file as input. Greps the log file for access via the Tor user agent.

-------------

_checktorip.sh_

Takes the IP and port of the server and the name of the log file as input. Greps the log file for access from Tor exit nodes. Requires wget and sends IP to Tor to get exit node list.

-------------

_torexitcountry.sh_

Quick and dirty script to count Tor exit nodes by country.
