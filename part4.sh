#!/bin/bash 
log_file="./app12.log"
touch $log_file

cat > $log_file << EOF
2024-01-01 08:00:00 INFO application started successfully
2024-01-01 08:05:00 ERROR database connection failed
2024-01-01 08:10:00 WARNING memory usage is high
2024-01-01 08:15:00 INFO backup process started
2024-01-01 08:20:00 ERROR disk space running low
2024-01-01 08:25:00 WARNING cpu usage is above 80%
2024-01-01 08:30:00 INFO health check passed
2024-01-01 08:35:00 ERROR memory usage critical
2024-01-01 08:40:00 WARNING disk space below 20%
2024-01-01 08:45:00 INFO application shutdown successfully
EOF

grep "ERROR" $log_file >> errors1.txt

awk '{print $1, $2, $3}' $log_file

sed 's/ERROR/CRITICAL/g' $log_file >> updated.log1
