#!/bin/bash

RLOG="/var/log/restic/latest-backup.log"

log-backup () {
	RLOG_ADDED=$(cat $RLOG | grep 'Added to the repo' | awk '{print $5,$6}' | awk '{ sum += $1 } END { print sum " MiB" }')
	echo "$RLOG_ADDED"
}

log-backup
