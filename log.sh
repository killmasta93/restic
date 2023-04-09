#!/bin/bash

#Create log file for Backup
docker logs restic_sftp_backup_1 > /var/log/restic/latest-backup.log


#Create log file for Check
docker logs restic_sftp_check_1 > /var/log/restic/latest-check.log 


#Create log file for Prune
docker logs restic_sftp-prune_1 > /var/log/restic/latest-prune.log 
