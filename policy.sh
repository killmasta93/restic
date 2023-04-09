#!/bin/bash

RLOG="/var/log/restic/latest-backup.log"

log-prune () {
	# Save set policy
	RLOG_PRUNE_POLICY=$(cat $RLOG | grep "Applying Policy:" | sed 's/Applying Policy: //')
	echo "$RLOG_PRUNE_POLICY"
}

log-prune
