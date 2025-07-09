#!/bin/bash

PORT=80
echo "***___ Simple web server started listening on port $PORT ___***"

while true; do
    RESPONSE="HTTP/1.1 200 OK\r\nContent-Type: text/plain\r\n\r\n$(date)"
    echo -e "Responding to HTTP request at $(date)"
    echo -e "$RESPONSE" | nc -l -p $PORT -q 1
done
