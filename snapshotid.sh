#!/bin/bash


log-backup () {
	# Exctract Snapshot ID
	RLOG_SNAPSHOTID=$(cat /var/log/restic/latest-backup.log | grep '^snapshot .* saved$' | awk '{print $2}'| head -1)
	echo "$RLOG_SNAPSHOTID"
}

log-backup
