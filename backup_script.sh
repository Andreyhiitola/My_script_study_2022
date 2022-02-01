#!/bin/bash

# Скрипт для backup с использованием rsync  cron
# В планировщике cron описываем время, дату запуска скрипта backup_script
# nano /etc/crontab 

source=/home/andy/Desktop/source_1/               #путь к папке с source

distination=/home/andy/Desktop/distination.back/  #путь к папке distination.back

#/home/andy/Desktop/log_file/log-file.txt/        #папка записи логов

rsync -avz --delete $source $distination > /home/andy/Desktop/log_file/log-file.txt`date +%F-%H-%M`

#Validate the mount point of the destination

df -h /home > /home/andy/Desktop/log_file/log-file_DISKSPACE.txt`date +%F-%H-%M`
               





 
#echo "$source"

#echo "$distination"
