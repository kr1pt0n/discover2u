# discover2u
![imagen](https://www.ccn.cni.es/images/slides/banner-actualidad.jpg)

[+] Script en bash que funciona como scanner de hosts mediante trazas icmp, usando este protocolo realiza trazas a distintos equipos que se encuentren en el segmento de red asignado,haciendo uso de un contador se probara un rango de 1 a 254, devolviendo un codigo de estado "0" si es correcto, o cualquier otro valor distinto es negativo es decir el host no esta activo. 

*Revisa el codigo, modifica el segmento de red que deseas escanear y ejecuta el script.
    
    ┌─[kr1pt0n@lab]─[~]
    └──╼ $  sed 's/192.168.1/tu_segmento_de_red/' -i d2u.sh

    
    chmod +x d2u.sh

    ┌─[kr1pt0n@lab]─[~]
    └──╼ $ ./d2u.sh
