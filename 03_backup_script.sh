  #!/usr/bin/env bash 
  # Скрипт для backup с использованием rsync  crontab
  # В планировщике crontab описываем время, дату запуска скрипта backup_script
  # nano crontab 
  SOURCE=$2
  DISTINATION=$4  #путь к папке distination.back
  LOG_FILE=$6     # путь к log_file 
  rsync -aypvzt --delete $2 $4   >> $LOG_FILE`date +%F-%H-%M`
  #Validate the mount point of the destination
  df -h /home >> $LOG_FILE`date +%F-%H-%M`


   
 

               





 

