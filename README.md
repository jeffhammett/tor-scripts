tor-log-check
=============

Scripts to check log files for access via the Tor network

=============

_checktoragent.sh_

Takes the name of the apache2 log file as input. Greps the log file for access via the Tor user agent.

-------------

_checktorip.sh_

Takes the IP and port of the server and the name of the apache2 log file as input. Greps the log file for access from Tor exit nodes
