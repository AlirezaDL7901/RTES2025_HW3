#!/bin/bash

# SSH
ssh root@192.168.99.94
# copy sample.txt to orangepi through ssh copy
scp ~/sample.txt root@192.168.99.94:~/
ssh-keygen -t rsa -b 2048
ssh-copy-id root@192.168.99.94

# auto connect
TIME=$(date "+%Y-%m-%d %H:%M:%S")
nmcli device wifi list
nmcli -t -f DEVICE,STATE device | grep wlan0 | cut -d: -f2
nmcli device wifi connect "$SSID" password "$WIFI_PASSWORD" >> /dev/null 2>&1
if [[ $? -eq 0 ]]; then
fi
echo "$(date): Connected to $SSID" >> "/var/log/auto-connect.log" 2>&1

# cron job
# Run every minute
#   * * * * * /path/to/auto-connect.sh
# Run once on boot
#   @reboot /path/to/auto-connect.sh

# IPC
# FIFO
mkfifo myfifo
echo "some message" > myfifo
cat myfifo
read line < "$FIFO_PATH"
read -rp "> " input
! -p "$FIFO_PATH"
# Linux Signals
# signal(sig, signal_handler);
# kill(pid, mySignal)
g++ signal-receiver.cpp -o signal-receiver
g++ signal-sender.cpp -o signal-sender
./signal-receiver
./signal-sender <PID> 10
kill -9 <PID>
# Shared memory
# shm_open(SHM_NAME, O_RDONLY, 0666);
# static_cast<const char*>(mmap(nullptr, SHM_SIZE, PROT_READ, MAP_SHARED, shm_fd, 0));
# shm_open(SHM_NAME, O_CREAT | O_RDWR, 0666);
# ftruncate(shm_fd, SHM_SIZE)
g++ shm-writer.cpp -o shm-writer
g++ shm-reader.cpp -o shm-reader

# web server using netcat
PORT=80
while true; do
    RESPONSE="HTTP/1.1 200 OK\r\nContent-Type: text/plain\r\n\r\n$(date)"
    echo -e "$RESPONSE" | nc -l -p $PORT -q 1
done

# -l :  listen mode
# -p :  specify port
# -q 1 :    close after 1 second

# web server service
# [Unit]
# After=network-online.target
#
# [Service]
# ExecStart=/root/simple-web-server.sh
# Restart=always
# RestartSec=5
# StandardOutput=journal
#
# [Install]
# WantedBy=multi-user.target

# Enable and start:
# sudo systemctl daemon-reexe
# sudo systemctl daemon-reload
# sudo systemctl enable webserver.service
# journalctl -u webserver.service -f

# remote monitor
lscpu | grep 'Architecture' && lscpu | grep 'CPU(s):' && lscpu | grep 'Model name:'
free -h | grep 'Mem:' | awk '{print \"total: \"$2 \"  used: \"$3 \"  free: \"$4 \"  buff/cach: \"$6 \"  available: \"$7}'
ip a | grep inet
top -bn1 | grep 'Cpu(s)' | awk '{print $2 + $4}'
free | grep Mem | awk '{print $3/$2 * 100.0}
ps -eo pid,%cpu --sort=-%cpu | awk 'NR==2{print $1}'
ps -eo pid,%mem --sort=-%mem | awk 'NR==2{print $1}'
