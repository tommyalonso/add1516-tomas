#<center>Tareas programadas</center>

##<center>1. SO OpenSUSE</center>

###1.1 Configuración de la máquina.-


Comenzaremos la práctica haciendo las configuraciones correspondientes en OpenSUSE como habitual, IP, máscara, nombre de equipo, dominio, etc... Además también instalaremos openssh-server y asegurarnos de colocar bien nuestro "hostname".

Aquí capturamos las siguientes configuraciones del equipo:

uname -a,
hostname -a,
hostname -d,
ip a,
route -n,
blkid.

<center>![](./img/00.png)</center>

###1.2 Tarea diferida.-


Ahora pasaremos a programar una tarea diferida (comando at), por ejemplo el apagado del equipo. Veamos el comando para ello:

<center>![](./img/01.png)</center>

Como vemos nos avisa del apagado del sistema en un minuto. También he realizado el script marcado para mostrar un mensaje de ánimo en la pantalla:

<center>![](./img/03.png)</center>

Y vemos como al introducir el comando "at now + 1 min" nos aparece el mensaje al ejecutar el script:

<center>![](./img/05.png)</center>

###1.3 Tarea periódica.-

Ahora programaremos una tarea periódica (crontab) para apagar el equipo. Para ello utilizaremos "shutdown". Primero descargamos el cron mediante "zypper in cron":

<center>![](./img/02.png)</center>

Y a continuación introduciremos el siguiente comando en el fichero crontab en /tmp. Con ello conseguiremos el apagado del equipo:

 máquina


##<center>2. SO Windows 7</center>

###2.1 Configuración de la máquina.-

Para Windows 7 realizaremos también las configuraciones de la máquina, ip, nombre del equipo, grupo de trabajo, tarjeta en modo puente, etc...

Nombre en el dominio:
<center>![](./img/w00.png)</center>

Ip, máscara...
<center>![](./img/w01.png)</center>

Tarjeta de red modo puente en VBox
<center>![](./img/w02.png)</center>


###2.2 Tarea periódica.-

Ahora vamos a programar una tarea para mostrar un mensaje por pantalla por ejemplo de nuestra hora de descanso, para ello vamos a Panel de control -> Herramientas administrativas -> Programador de tareas.

<center>![](./img/w03.png)</center>

Crearemos una tarea básica y se nos abrirá el asistente para ello:

<center>![](./img/w07.png)</center>

Vamos introduciendo los campos necesarios para llevarla a cabo:

<center>![](./img/w08.png)</center>

La ponemos diariamente.

<center>![](./img/w09.png)</center>

Hora elegida para el descanso.

<center>![](./img/w10.png)</center>
<center>![](./img/w11.png)</center>

Mostrar el mensaje para informar y finalmente nos aparece un cuadro resumen con nuestra tarea y su información:

<center>![](./img/w12.png)</center>

Y vemos como estará programada finalmente para su ejecución:

<center>![](./img/w13.png)</center>


###2.3 Tarea diferida.-

Vamos a programar esta tarea para apagar el equipo. El comando como todos sabemos es "shutdown", y "shutdown /s" para programar el apagado, veámoslo:

shutdown /?, para ayuda
 <center>![](./img/w04.png)</center>

shutdown /s para apagar inmediatamente
<center>![](./img/w05.png)</center>

shutdown /s /t XX para apagar con retardo
<center>![](./img/w06.png)</center>

###2.4 Tarea asíncrona.-

En este caso yo he realizado una tarea asíncrona para abrir un programa dado un tiempo. Para ello lo primero que he realizado ha sido buscar como hacer un script para que ejecute dicho programa la tarea programada. Lo llamo inicio.cmd y lo guardamos en C: por ejemplo:

<center>![](./img/w14.png)</center>

Ahora vamos a la carpeta Program Files y allí creamos otra llamada MisProgramas por ejemplo donde pondremos el acceso directo a nuestro programa a ejecutar:

<center>![](./img/w15.png)</center>
<center>![](./img/w16.png)</center>

A continuación vamos al asistente de creación de tareas básicas e introducimos lo siguiente:

<center>![](./img/w17.png)</center>

Colocamos la hora deseada para abrir el programa:

<center>![](./img/w18.png)</center>

La acción:

<center>![](./img/w19.png)</center>

Colocamos la ruta del programa o en mi caso del script:

<center>![](./img/w20.png)</center>

En el Programador de tareas nos aparece el resumen y vemos nuestra tarea en Estado de ejecución lo cual significa que esta activada para funcionar. De fondo vemos que aparece el Word abierto.

<center>![](./img/w23.png)</center>

####NOTA:

- He tenido algunos problemas al final con la tarea asíncrona de OpenSUSE justo estos días en los cuales no hemos tenido clase.
- En el apartado de Windows 7 he cambiado el orden de los títulos de diferida y periódica por que así me parecía más adecuado. Nose si me equivocaré con ésto y pido disculpas por si se me malinterpreta pero me pareció más periódica la tarea de mostrar todos los días un mensaje de descanso  que el apagado del equipo con el comando shutdown. Aún asi te lo comentaré en clase, gracias.











































