#!/bin/bash

# log-archive.sh - Compress and archive logs from a given directory

# Exit immediately if any command fails
set -e

# Check for required argument
if [ $# -ne 1 ]; then
    echo "❌ Usage: $0 <log-directory>"
    exit 1
fi

LOG_DIR="$1"

# Check if log directory exists
if [ ! -d "$LOG_DIR" ]; then
    echo "❌ Error: Directory '$LOG_DIR' does not exist."
    exit 2
fi

# Create an archive directory if it doesn't exist
ARCHIVE_DIR="./archives"
mkdir -p "$ARCHIVE_DIR"

# Generate timestamp
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
ARCHIVE_NAME="logs_archive_${TIMESTAMP}.tar.gz"
ARCHIVE_PATH="${ARCHIVE_DIR}/${ARCHIVE_NAME}"

# Compress the logs
tar -czf "$ARCHIVE_PATH" -C "$LOG_DIR" .

# Log the archive operation
echo "[$(date)] Archived '$LOG_DIR' to '$ARCHIVE_PATH'" >> archive.log

# Success message
echo "✅ Logs archived successfully as: $ARCHIVE_PATH"
