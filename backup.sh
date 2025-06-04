#!/bin/bash

TIMESTAMP=$(date +"%F_%H-%M-%S")
BACKUP_DIR=/home/hadi/Cloud-Computing/backups
FILENAME=db_backup_$TIMESTAMP.sql

docker exec mysql-db /usr/bin/mysqldump --no-tablespaces -u laravel --password=laravel tugas > "$BACKUP_DIR/$FILENAME"

