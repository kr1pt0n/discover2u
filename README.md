# discover2u
![imagen](https://www.ccn.cni.es/images/slides/banner-actualidad.jpg)

[+] Script en bash que funciona como scanner de hosts mediante trazas icmp, usando este protocolo realiza trazas a distintos equipos que se encuentre en el segmento de red asignado, devolviendo un codigo de estado 0 o 1 y reportando como salida el valor y variable que se le ha asignado.

*Revisa el codigo, modifica el segmento de red que deseas escanear y ejecuta el script.
    
    sed 's/192.168.1/tu_segmento_de_red/' -i d2u.sh
    
    chmod +x d2u.sh

    ┌─[kr1pt0n@lab]─[~]
    └──╼ $ ./d2u.sh
