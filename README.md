tor-scripts
=============

Misc scripts related to the Tor network.

=============

**checktoragent.sh**

Takes the name of the log file as input. Greps the log file for access via the Tor user agent.

-------------

**checktorip.sh**

Takes the name of the log file as input. Greps the log file for access from Tor exit nodes. Requires wget to get exit node list.

-------------

**torexitcountry.sh**

Quick and dirty script to count Tor exit nodes by country.

-------------

**CheckForTorUA.ps1**

Powershell script to check IIS logs for access from the Tor Browser User Agent. Checks logs from the last 24 hours.
