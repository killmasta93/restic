#!/bin/bash

RLOG="/var/log/restic/latest-prune.log"

log-prune () {
    
	# Unused Size
	RLOG_PRUNE_UNUSED_SIZE=$(cat $RLOG | grep "unused size after prune:" | awk '{print $5,$6}' | head -1 )
	echo "$RLOG_PRUNE_UNUSED_SIZE"
}


log-prune
