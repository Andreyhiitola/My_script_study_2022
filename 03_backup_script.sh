#!/usr/bin/env bash  
  # Скрипт для backup с использованием rsync  cron
  # В планировщике cron описываем время, дату запуска скрипта backup_script
  #nano /etc/crontab 
  #в crontab прописываем время установки Б далее ./script.sh --source PATH file --destination PATH file.back
  SOURSE=$2                          			#путь к папке с source
  DESTINATION=$4  					#путь к папке distination.back
  LOG_FILE=/home/andy/Desktop/log_file/           	#папка записи логов
  rsync -aypvzt --delete $2 $4 >> $LOG_FILE`date +%F-%H-%M`
  #Validate the mount point of the destination
  df -h /home >> $LOG_FILE_`date +%F-%H-%M`


               





 

