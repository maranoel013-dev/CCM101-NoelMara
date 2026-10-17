#!/bin/bash
# Backs up the Nextcloud database and keeps the last 7 days
BACKUP_DIR=/home/leon/backups
DATE=$(date +%F_%H-%M)
mkdir -p "$BACKUP_DIR"
docker exec nextcloud-stack-database-1 mysqldump -u root -pcloudnova_root nextcloud_db | gzip > "$BACKUP_DIR/nextcloud_db_$DATE.sql.gz"
find "$BACKUP_DIR" -name "*.sql.gz" -mtime +7 -delete
echo "$(date): backup complete" >> "$BACKUP_DIR/backup.log"
