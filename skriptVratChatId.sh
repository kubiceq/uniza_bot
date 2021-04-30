#!/bin/bash

input="/home/ubuntu/info.txt"

while IFS=':' read -r MENO HESLO CHATID
do
  echo "$CHATID"
done < "$input"
