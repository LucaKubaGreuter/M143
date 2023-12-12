#!/bin/bash

# Linux server SSH connection details
linux_user='ubuntu'
linux_host='3.228.34.74'
linux_key='C:\Users\lucag\Desktop\sql_rsa'
linux_script='/home/ubuntu/backup_script.sh'

# Windows server backup directory
backup_dir='C:\Users\lucag\Desktop\Backup'

# Generate timestamp on the Windows machine
timestamp=$(/bin/date +"%Y-%m-%d_%H-%M")

# Establish SSH connection to the Linux server and execute the backup script
ssh -i "$linux_key" "$linux_user@$linux_host" "bash $linux_script"

# Copy the backup file from Linux to Windows
cd '/cygdrive/c/Users/lucag/Desktop/Backup'
scp -i .././sql_rsa ubuntu@3.228.34.74:/home/ubuntu/backup_file.sql ./Backup_SQL/backup_file_$timestamp.sql
