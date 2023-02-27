#!/bin/bash

export DISPLAY=:0

# Start VNC server, log to /var/log/xvnc
Xvnc -SecurityTypes None -AlwaysShared=1 -geometry 1920x1080 :0 > /var/log/xvnc 2>&1 &

# Start noVNC server, log to /var/log/novnc
./noVNC/utils/novnc_proxy --vnc localhost:5900 > /var/log/novnc 2>&1 &

# Start openbox
openbox &

# Start TWS
~/Jts/*/tws > /var/log/tws 2>&1 &

tail -qf /var/log/xvnc /var/log/novnc /var/log/tws