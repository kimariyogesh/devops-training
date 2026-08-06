# writing multi line content clearly

# !/bin/bash

# Write a multi line block without multiple echo statement

cat > /tmp/report.txt << EOF
== SERVER REPORT ==
Date: $(date)
Hostname: $(hostname)
Disk Usage: $(df -h / | tail -1 | awk '{print $5}')
Uptime: $(uptime)
EOF

#   << EOF = starts heredocs       EOF ends heredocs

cat /tmp/report.txt


