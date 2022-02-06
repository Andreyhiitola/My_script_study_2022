#!/usr/bin/env bash  
# Учебный скрипт для варификации пароля
# Описываем алгоритм введения пароля 


  echo "Ввдите пароль (8 символов  A-Za-z0-9:)"
  read -r  passwd
  #Запрашиваем у пользователя изменение
  echo Вы уверены что хотите изменить passwd, если ДА  нажмите [y] или любую кнопку для выхода  :
  read -r reqwest
  [[ $( echo "$reqwest" | grep "[Yy]" ) ]]
  if    [[ "$?" == 0 ]]; then
        echo " Проверка passwd"
  else
        echo "Неудачный пароль, повторите "
  fi
  echo "start checkin passwd $passwd" #после отладки удалить passwd в данной строке
    [[ $(echo "$passwd" | grep -E '^[A-Za-z0-9]{8}+$') ]]  # Дополнить регулярные выражения
    [[ $(echo "$passwd" | grep -E '^[!=\?@^%-<>\+_]{8}+$') ]]
    [[ $(echo "$passwd" | grep -E '^[^lO$#"]{8}+$') ]]
    [[ $(echo "$passwd" | grep -E '^[^\S]{8}+$') ]]
    [[ $(echo "$passwd" | grep -E '^[^А-Яа-я]{8}+$') ]]
    [[ $(echo "$passwd" | grep -E '^[^$#"]{8}+$') ]] 
    if [ "$?" == 0 ];
        then
        echo " Пароль успешно обновлен "
    else
        echo "ERORR повторите ввод passwd еще раз"

        fi

