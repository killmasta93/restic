#!/bin/bash	

RLOG="/var/log/restic/latest-backup.log"

log-backup () {

	# Extract Processed Bytes
	RLOG_PROCESSED_BYTES=$(cat $RLOG | grep '^processed.*files' | awk '{print $4,$5}' | head -1)
	echo "$RLOG_PROCESSED_BYTES"  
}

log-backup
