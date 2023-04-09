#!/bin/bash

RLOG="/var/log/restic/latest-prune.log"

log-prune () {
	# Remaining Size
	RLOG_PRUNE_REMAINING_SIZE=$(cat $RLOG | grep "remaining:" | awk '{print $(NF-1), $NF}' | head -1)
	echo "$RLOG_PRUNE_REMAINING_SIZE"

}

log-prune
