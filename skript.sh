#!/bin/bash

input="/home/ubuntu/info.txt"

while IFS=':' read -r MENO HESLO CHATID
do
  echo "$CHATID"


curl -c cookie.txt -d "meno=${MENO}" -d "heslo=${HESLO}" https://vzdelavanie.uniza.sk/vzdelavanie/login.php --http1.1
curl -b cookie.txt https://vzdelavanie.uniza.sk/vzdelavanie/svysledky.php -o "${CHATID}".txt --http1.1
done < "$input"
