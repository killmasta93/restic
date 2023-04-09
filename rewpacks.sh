#!/bin/bash

RLOG="/var/log/restic/latest-prune.log"

log-prune () {
	# Remaining Size
	RLOG_PRUNE_REMAINING_SIZE=$(cat $RLOG | grep "packs processed" | awk '{print $3}' | awk '{ sum += $1 } END { print sum }')
	echo "$RLOG_PRUNE_REMAINING_SIZE"

}

log-prune
