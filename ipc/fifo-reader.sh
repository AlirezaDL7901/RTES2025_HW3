#!/bin/bash

# Configuration
FIFO_PATH="/tmp/myfifo"
if [[ ! -p "$FIFO_PATH" ]]; then
    mkfifo "$FIFO_PATH"
    echo "FIFO created"
fi
echo "Reader started. Waiting for incoming messages ..."

while true; do
    if read line < "$FIFO_PATH"; then
        echo "Received: $line"
    fi
done
