# discover2u
![imagen](https://www.ccn.cni.es/images/slides/banner-actualidad.jpg)

[+] Script en bash que funciona como scanner de hosts mediante trazas icmp, usando este protocolo realiza trazas a distintos equipos que se encuentren en el segmento de red asignado,haciendo uso de un secuenciador se probara un rango de 1 a 254, devolviendo un codigo de estado "0" si es correcto y procedera con la siguiente porcion del codigo que nos reportara en pantalla el estado del equipo, y cualquier otro valor distinto a "0" es negativo es decir el host no esta activo.

*Revisa el codigo, modifica el segmento de red que deseas escanear y ejecuta el script.
    
    ┌─[kr1pt0n@lab]─[~]
    └──╼ $ git clone https://github.com/kr1pt0n/discover2u
    
    ┌─[kr1pt0n@lab]─[~]
    └──╼ $ sed 's/192.168.1/tu_segmento_de_red/' -i d2u.sh

    ┌─[kr1pt0n@lab]─[~]
    └──╼ $ chmod +x d2u.sh
    
    ┌─[kr1pt0n@lab]─[~]
    └──╼ $ ./d2u.sh
    [+] Host 192.168.1.1 - ACTIVE
    [+] Host 192.168.1.12 - ACTIVE
    [+] Host 192.168.1.14 - ACTIVE
    [+] Host 192.168.1.15 - ACTIVE
    [+] Host 192.168.1.25 - ACTIVE
    [+] Host 192.168.1.53 - ACTIVE
    [+] Host 192.168.1.54 - ACTIVE
    [+] Host 192.168.1.65 - ACTIVE
    [+] Host 192.168.1.87 - ACTIVE
    [+] Host 192.168.1.90 - ACTIVE
    [+] Host 192.168.1.95- ACTIVE
    [+] Host 192.168.1.99 - ACTIVE
    [+] Host 192.168.1.253 - ACTIVE
    [+] Host 192.168.1.254 - ACTIVE


