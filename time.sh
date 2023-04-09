#!/bin/bash     
    

RLOG="/var/log/restic/latest-backup.log"

log-backup () {
RLOG_PROCESSED_TIME=$(cat $RLOG | grep '^processed.*files' | \
                    awk '{print $NF}' | \
                    awk -F':' '{print (NF>2 ? $(NF-2)*3600 : 0) + (NF>1 ? $(NF-1)*60 : 0) + $(NF)}' | awk '{ sum += $1 } END { print sum }' )
TIME=$(date -ud "@$RLOG_PROCESSED_TIME" +'$((%s/3600/24)) +  %H h %M m %S s' | awk '{print $3 $4 ":" $5 $6 ":" $7 $8 }')
                echo "$TIME"
}

log-backup
