#!/bin/bash

RLOG="/var/log/restic/latest-check.log"
LOG="/var/log/restic/check-container.log"

log-check () {
	RLOG_CHECK_RESULT=$( grep "no errors were found" $RLOG | head -1 ) || RLOG_CHECK_RESULT=$(grep "ciphertext verification failed" $LOG)
	echo "$RLOG_CHECK_RESULT"
}

log-check
