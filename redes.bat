@echo off
REM Ping para comprobar si la pila TCP/IP funciona
ping 127.0.0.1

REM obtengo la direccion IPv4
ipconfig 

REM Solicito url al usuario

set /p url= "Ingresa url"

REM Para que me devuelva los primeros 4 paquetes 

ping %url%

REM Pido otra url y dejo que el usuario corte la ejecucion con ctrl+C

set /p url2="Otra url, corta con ctrl+C"

ping %url2% -t

REM Pido otra url y envio 10 paquetes
set /p url3="Url para ping preciso"
ping -n 10 %url3%


REM Envio paquetes de con un peso de 1000 byte para ver como se comporta 
set /p url4="Url para ping pesado"
ping -i 1000 %url4%


REM Pido una direccion IP y intento encontrar el nombre
set /p ip="Ingrese direccion IP"
ping -a %ip%
