@echo off

echo Test de redes
echo .
echo .


:Menu
echo Menu

echo 1.Probar la pila TCP/IP
echo 2.Obtener direccion IPv4
echo 3.Ver los primeros 4 paquetes de una url
echo 4.Envio de paquetes continuo
echo 5.Enviar 10 paquetes
echo 6.Ver ping pesado
echo 7.Encontrar nombre de una direccion
echo 8.tracert
echo 9.nslookup
echo 10.ipconfig
echo 11.Salir

set /p opc= ""

if %opc% == 1 (
    REM Ping para comprobar si la pila TCP/IP funciona
    ping 127.0.0.1
    pause
    echo .
    echo .
    goto Menu

)
IF %opc% == 2 (
    REM obtengo la direccion IPv4
    ipconfig 
    pause
    echo .
    echo .
    goto Menu
)
IF %opc% == 3 (
    REM Solicito url al usuario

    set /p url= "Ingresa url"

    REM Para que me devuelva los primeros 4 paquetes 

    ping %url%
    pause
    echo .
    echo .
    goto Menu

)
IF %opc% == 4 (
    REM Pido otra url y dejo que el usuario corte la ejecucion con ctrl+C

    set /p url2="Otra url, corta con ctrl+C"

    ping %url2% -t
    pause
    echo .
    echo .
    goto Menu
)
IF %opc% == 5 (
    REM Pido otra url y envio 10 paquetes
    set /p url3="Url para ping preciso"
    ping -n 10 %url3%
    pause
    echo .
    echo .
    goto Menu
)

IF %opc% == 6 (
    REM Envio paquetes de con un peso de 1000 byte para ver como se comporta 
    set /p url4="Url para ping pesado"
    ping -l 1000 %url4%
    pause 
    echo .
    echo . 
    goto Menu
)



IF %opc% == 7 (
    REM Pido una direccion IP y intento encontrar el nombre
    set /p ip="Ingrese direccion IP"
    ping -a %ip%
    pause 
    echo.
    echo.
    goto Menu

)


REM Uso tracert para ver la ruta que toman los paquetes
IF %opc% == 8 ( 
    tracert www.utn.edu.ar
    pause 
    echo .
    echo .
    goto Menu
)


IF %opc% == 9 (
    REM Uso nslookup para traducir el nombre a direccion IP y ver el servidor que hace la traduccion
    nslookup www.inet.edu.ar
    nslookup www.google.com
    nslookup brexxon.net.ar
    pause
    echo .
    echo .
    goto Menu
)

IF %opc% == 10 (
    ipconfig 192.168.0.101
    ipconfig 192.168.0.1
    ipconfig 8.8.8.8
    pause 
    echo .
    echo . 
    goto Menu
)