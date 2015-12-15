#<center>Servidor LDAP - OpenSUSE</center>

###1.1 Preprar la máquina

Prepararemos el servidor LDAP:

Usaremos un OpenSUSE con SSH ya instalado. Configuramos ip y demás parámetros. Aparte del /etc/hosts:

ip a
<center>![](./imagenes/1.png)</center>

hostname -f
<center>![](imagenes/2.png)</center>

lsblk y blkid
<center>![](./imagenes/2.1.png)</center>

Configuración de host:

<center>![](./imagenes/8.png)</center>

####1.2 Instalación del Servidor LDAP

Procedemos a la instalación del módulo Yast para gestionar el servidor LDAP (yast-auth-server) y apartir de aquí seguimos los pasos indicados en servidor LDAP de la siguiente forma:

Servidor autónomo:

<center>![](./imagenes/5.png)</center>

Usar como DN el siguiente:

<center>![](./imagenes/6.png)</center>

Ojo, NO habilitar Kerberos

Comprobamos el servicio:

<center>![](./imagenes/b.png)</center>

Con la herramienta gq comprobamos que tenemos las unidades organizativas 'group' y 'people':

<center>![](./imagenes/c.png)</center>


###1.3 Crear usuarios y grupos en LDAP:

Ahora vamos a introducir datos de usuarios y grupos en el servidor LDAP siguiendo los pasos indicados en el enlace, pero personalizado la información de la siguiente forma:

Instalaremos yast2-auth-client:

<center>![](./imagenes/a.png)</center>

Crear los grupos jedis2 y siths2 (Estos se crearán dentro de la ou=groups).

<center>![](./imagenes/14.png)</center>

Crear los usuarios jedi21, jedi22, sith21, sith22 (Estos se crearán dentro de la ou=people).

<center>![](./imagenes/13.png)</center>

Como podemos ver en las capturas aparecen grupos y usuarios con nombres distintos. Esto es así por
motivos de errores con nombres y grupos anteriores incluso eliminándolos.

A continuación comprobamos en el gq la información de la base de datos LDAP.

<center>![](./imagenes/d.png)</center>

Con el comando ldapsearch -x -L -u -t "(uid=nombre-del-usuario)", podemos hacer una consulta en la base de datos LDAP de la información del usuario. Veámosla por ejemplo con sith23:

<center>![](./imagenes/e.png)</center>

###1.4 Autenticación

Comprobar que podemos entrar (Inicio de sesión) en la MV ldap-serverXX usando los usuarios definidos en el LDAP.

<center>![](./imagenes/15.png)</center>

Capturar imagen de la salida de los siguientes comandos:

- hostname -f (Muestra nombre de la MV actual)
- ip a (Muestra datos de red de la MV actual)
- date
- cat /etc/passwd |grep nombre-usuario (No debe existir este usuario en la MV local)
- finger nombre-usuario
- id nombre-usuario
- su nombre-usuario

<center>![](./imagenes/f.png)</center>

##2. Otro equipo

###  2.1 Preparativos

- Slave LDAP. Configuración de los parámetros de red:

<center>![](./imagenes/g.png)</center>




































