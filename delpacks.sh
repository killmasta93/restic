#!/bin/bash

RLOG="/var/log/restic/latest-prune.log"

log-prune () {
	# Old Packs
	RLOG_PRUNE_PACKS_REMOVED=$(cat $RLOG | grep "removing .* old packs" | awk '{print $2}' | awk '{ sum += $1 } END { print sum }')
	if [ -n "$RLOG_PRUNE_PACKS_REMOVED" ]; then
		echo "$RLOG_PRUNE_PACKS_REMOVED"
	fi
}


log-prune
