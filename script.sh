#!/bin/bash
# Purpose: Backup a specified directory to a backup folder with timestamp
# Author: Prachi
# Date: 18/11/2025
# Usage: ./backup_directory.sh /path/to/source /path/to/backup

source_dir=$1
backup_dir=$2
timestamp=$(date +%Y%m%d%H%M%S)

if [ ! -d "$backup_dir" ]; then
  mkdir -p "$backup_dir"
fi

cp -r "$source_dir" "$backup_dir/backup_$timestamp"
echo "Backup of $source_dir completed at $backup_dir/backup_$timestamp"
