#!/bin/bash

#Funcion para cancelar el script

function ctrl_c(){
        echo -e "\n\n[!] Cancelando el scanneo... \n"
        tput cnorm;exit 1
}

#Ctrl+C 
trap ctrl_c INT

#Desaparecer cursor
tput civis

for i in $(seq 1 254); do

#Cambiar el segmento de red "192.168.1", por la que desea escanear.

	timeout 1 bash -c "ping -c 1 192.168.1.$i" &>/dev/null && echo "[+] Host 192.168.1.$i - ACTIVE" &

done; wait

#Reaparecer cursor

tput cnorm
