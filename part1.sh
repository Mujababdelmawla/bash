#!/bin/bash 

file_name="./health_report.txt"
timestamp=$(date)

touch $file_name


cpu_usage=$(top -bn1 | grep "Cpu") # batch mode (-b) n1 means run onlu one time 

mem_usage=$(free -h | grep "Mem" | awk '{print$3}')

disk_space=$(df -h | grep "/dev")

echo "the report generated at : $timestamp" >> $file_name
echo "the cpu usage is : $cpu_usage" >> $file_name

echo "the memory usage is : $mem_usage" >> $file_name

echo "the disk space is : $disk_space" >> $file_name

echo "the health report generated successfuly."


