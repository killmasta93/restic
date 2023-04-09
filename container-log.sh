#!/bin/bash     


log-container () {

         GET_CONTAINER_LOG_PHATH=$(docker inspect restic_sftp-prune_1 | grep "LogPath" | awk '{print $2}' | sed 's/.//;s/..$//')
         cat "$GET_CONTAINER_LOG_PHATH" > /var/log/restic/prune-container.log

         GET_CONTAINER_LOG_PHATH=$(docker inspect restic_sftp_check_1 | grep "LogPath" | awk '{print $2}' | sed 's/.//;s/..$//')
         cat "$GET_CONTAINER_LOG_PHATH" > /var/log/restic/check-container.log
		   
}

log-container
