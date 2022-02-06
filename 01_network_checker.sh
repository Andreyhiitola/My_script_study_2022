#!/usr/bin/env bash 


  # name1 задает адрес google.com
  name1=google.com
  #  через ip r находим default gateway
    ping -c 5 -i 2 "$name1" > logfile.txt 
  if [ "$?" == 0  ];
  then 
  echo ""$name1" reachable"
  else 
  echo "ERROR: cannot reach the $name1" 	
  fi
  ping -c 5 -i 2  $(ip r | grep default | awk '{print$3}') >> logfile.txt
  if [ "$?" == 0 ];
  then 
  echo "The default gateway reacheble"  
  else 
  echo "ERROR: The default gateway is not reacheble" | tee logfile.txt 
fi
	






