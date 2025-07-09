#!/bin/bash

# Configuration
FIFO_PATH="/tmp/myfifo"
if [[ ! -p "$FIFO_PATH" ]]; then
    echo "No Reader ..."
    exit 1
fi
echo "Writer started. Waiting for inputs ..."

while true; do
    read -rp "> " input
    echo "$input" > "$FIFO_PATH"
done
