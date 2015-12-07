#!/bin/bash
hostname=$(/bin/hostname)
dainfo -d | grep 'Connection refused' &> /dev/null
if [ $? == 0 ]; then
	  mail -s "Fix CentrifyDA on $hostname" mark.clatterbuck@e-hps.com < /dev/null
  fi
