#!/bin/bash


if [[ "$(id -u)" -ne 0 ]]; then
   printf "\e[1;31m[!]\e[0;31m Error: Please Run This Script As Root !\n"
   exit 1
fi

printf "\n\e[1;32m[*]\e[0;32m Installing.....\e[1;33mFireStik\n"
sleep 2
mv FireStik.sh FireStik
chmod +x FireStik.sh
mv FireStik /usr/bin/
