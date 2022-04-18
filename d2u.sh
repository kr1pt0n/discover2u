#!/bin/bash

#Funcion para cancelar el script

function ctrl_c(){
        echo -e "\n\n[!] Cancelando el scritp... \n"
        tput cnorm;exit 1
}

#Ctrl+C 
trap ctrl_c INT

#Desaparecer cursor
tput civis

for i in $(seq 1 254); do

#Cambiar el rango de direccion ip por la que desea escanear.
#Se envia una traza icmp a distintos hosts del rango de ip ( 1-254)
#qe devolvera un codigo de estado 1 o 0, y procedera con la siguiente instruccion, dependiendo de ello.

	timeout 1 bash -c "ping -c 1 192.168.1.$i" &>/dev/null && echo "[+] Host 192.168.1.$i - ACTIVE" &

done; wait

#Reaparecer cursor

tput cnorm
