#!/bin/bash

# Linux server SSH connection details
linux_user='ubuntu'
linux_host='44.222.20.187'
linux_key='C:\Users\lucag\Desktop\sql_rsa'
linux_script='/home/ubuntu/backup.sh'

# Windows server backup directory
backup_dir='C:\Users\lucag\Desktop\Backup'

# Establish SSH connection to the Linux server and execute the backup script
ssh -i "$linux_key" "$linux_user@$linux_host" "bash $linux_script"

# Copy the backup file from Linux to Windows
cd '/cygdrive/c/Users/lucag/Desktop/Backup'
scp -i .././sql_rsa ubuntu@44.222.20.187:/home/ubuntu/WebBackup/displaydata.php ./Backup_Web/displaydata.php
scp -i .././sql_rsa ubuntu@44.222.20.187:/home/ubuntu/WebBackup/index.html ./Backup_Web/index.html