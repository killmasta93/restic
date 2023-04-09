#!/bin/bash	
    

RLOG="/var/log/restic/prune-container.log"

log-backup () {
           	RLOG_PRUNE_PACKS=$(cat $RLOG | grep 'total prune' | awk '{print $3}' | awk '{ sum += $1 } END { print sum }') 
	        echo "$RLOG_PRUNE_PACKS" 
}

log-backup
