#Challenge: Log File Analyzer Script
#Scenario:
#You are a DevOps engineer and your application is generating a log file. Your job is to write a bash script that creates the log file, fills it with data, and then analyzes it.

#Your script must do the following steps:
#Step 1 — Setup

#Define all your file paths as variables at the top of the script
#Create a folder called log_project
#Inside it create a file called app.log

#Step 2 — Fill the log file
#Use echo to write these exact lines into app.log:
#2024-01-01 ERROR database connection failed
#2024-01-01 INFO application started successfully
#2024-01-02 ERROR disk space running low
#2024-01-02 INFO backup completed
#2024-01-03 ERROR memory usage critical
#2024-01-03 INFO server health check passed
#Step 3 — Analyze the log

#Use grep to find all lines that contain ERROR and save them into a file called errors_only.txt
#Use awk to print only the dates column from app.log
#Use sed to replace the word ERROR with CRITICAL in app.log and save it as updated.log





#############################################################################################################







#!/bin/bash 

folder_name="./log_project"
file_name="$folder_name/app.log"
errors="$folder_name/errors_only.txt"
update="$folder_name/updated.log"

mkdir -p "$folder_name"

echo "2024-01-01 ERROR database connection failed" >> $file_name
echo "2024-01-01 INFO application started successfully" >> $file_name
echo "2024-01-02 ERROR disk space running low" >> $file_name
echo "2024-01-02 INFO backup completed" >> $file_name
echo "2024-01-03 ERROR memory usage critical" >> $file_name
echo "2024-01-03 INFO server health check passed" >> $file_name

grep "ERROR" $file_name >> $errors

awk '{print $1, $2, $3}' $file_name

sed 's/ERROR/CRITICAL/g' $file_name >> $update




