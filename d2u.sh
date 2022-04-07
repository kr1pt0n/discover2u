#!/bin/bash

#Funcion para cancelar el script

function ctrl_c(){
        echo -e "\n\n[!] Saliendo... \n"
        tput cnorm;exit 1
}

#Ctrl+C 
trap ctrl_c INT

#Desaparecer cursor
tput civis

for i in $(seq 1 254); do

#Cambiar la direccion ip por la  del equipo que desea ser scaneado.
#Se envia una traza icmp al equipo donde devolvera un codigo de estado 1 o 0, donde 0 es correcto y 1 negativo.

	timeout 1 bash -c "ping -c 1 192.168.1.$i" &>/dev/null && echo "[+] Host 192.168.1.$i - ACTIVE" &

done; wait

#Reaparecer cursor

tput cnorm
