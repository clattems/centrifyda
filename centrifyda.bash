#!/bin/bash
hostname=$(/bin/hostname)
dainfo -d | grep 'Connection refused' &> /dev/null
if [ $? == 0 ]; then
	  mail -s "Fix CentrifyDA on $hostname" user@example.com < /dev/null
  fi
