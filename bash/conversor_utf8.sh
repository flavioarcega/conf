#!/usr/bin/env bash

#executei com find . -type f -exec sh conversor_utf8.sh {} \;

arquivo=$1

file "$arquivo" | grep text
result=$?

if [ "0" -eq "$result" ]
then
  file -i "$arquivo" | grep iso-8859-1
  if [ "1" -eq "$?" ]
  then
    file -i "$arquivo" | grep utf-8
    if [ "0" -eq "$?" ]
    then
      echo "Ja UTF-8!"
      return 0
    fi

    file -i "$arquivo" | grep us-ascii
    if [ "1" -eq "$?" ]
    then
      echo ">>>> Arquivo nao sera convertido!! <<<<"
      file -i "$arquivo" >> /tmp/converte.log
    else
      echo "Convertendo arquivo ASCII: $arquivo"
      iconv -f us-ascii -t UTF-8 "$arquivo" -o "$arquivo.utf8"
      mv "$arquivo.utf8" "$arquivo"
    fi
  else
    echo "Convertendo arquivo ISO: $arquivo"
    iconv -f ISO-8859-15 -t UTF-8 "$arquivo" -o "$arquivo.utf8"
    mv "$arquivo.utf8" "$arquivo"
  fi
fi
