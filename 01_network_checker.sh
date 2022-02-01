#!/bin/bash
#LOG=/tmp/mylog.log
# name1 задает адрес google.com
name1=google.com
# name2 задает адрес gateway хоста
 
 name2=127.0.0.1



       	 ping -c 5 -i 2 "$name1" > logfile.txt 


if [ "$?" == 0  ];
then 
 echo ""$name1" reachable"
else 
echo "ERROR: cannot reach the "$name1"" 	
fi

            ping -c 5 -i 2 "$name2" >> logfile.txt

if [ "$?" == 0 ];
then 
	echo "The default gateway   "$name2" reacheble"  
else 

	echo "ERROR: The default gateway is not reacheble" | tee logfile.txt 
fi
	
exit 1

#ip -br link | grep wlp | awk {'print$2'}  2й вариант позволяет по символу  UP DOWN определить есть ли интернет.В данном случае проверяем wi-fi интерфейс.


