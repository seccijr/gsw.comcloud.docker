ComCLOUD Dockerizer
===================


Servicios **ComCLOUD** Dockerizados en cuatro  imágenes de Docker.  Dentro de los cuatro servicios nos encontramos con:

 - Openfire
 - Owncloud
 - Remine
 - Zimbra

Además estos cuatro servicios se comunican con un servidor de autenticación centralizado Jasig CAS server, el cual utilizan como repositorio de usuarios y proveedor de autenticación para cada todos los servicios.

Para levantar el entorno completo hemos de ejecutar el comositor de docker con el siguiente commando desde el directorio raiz del repositorio:

> $ docker-compose up


Openfire
-------------

La imagen que proveemos como base del servicio Openfire se trata de una instalación por defecto de este servidor disponible para Ubuntu 14.04 utilizando la siguiente [guia](https://www.digitalocean.com/community/tutorials/how-to-install-openfire-xmpp-server-on-a-debian-or-ubuntu-vps).


#### Ejecución

Si nuestra intención es levantar una imagen únicamente con este servicio lo que debemos hacer es:

>  1. Posicionarnos en el directorio *services/openfire* 
>  2. Ejecutar *docker-compose up*

#### Conexión

El puerto en el que escucha el Docker Host la aplicación del Panel de Administración de Openfire es el 9090 a través de HTTP o 9091 a través de HTTPS. Un ejemplo de conexión a este panel es:

> $ firefox http://DOCKER_HOST_IP:9090/

*Donde DOCKERHOST_IP es la IP asignada a la máquina DOCKER_HOST*

Las credenciales de acceso a este panel son ***admin/admin***


Owncloud
-------------

La imagen que proveemos como base del servicio Owncloud se trata de una instalación por defecto de este servidor disponible para Ubuntu 14.04 utilizando la siguiente [guia](https://www.howtoforge.com/how-to-install-owncloud-7-on-ubuntu-14.04).


#### Ejecución

Si nuestra intención es levantar una imagen únicamente con este servicio lo que debemos hacer es:

>  1. Posicionarnos en el directorio *services/owncloud* 
>  2. Ejecutar *docker-compose up*

#### Conexión

El puerto en el que escucha el Docker Host la aplicación de Owncloud es el 80 a través de HTTP. Existe una restricción de acceso al servicio en función del nombre de dominio. Se debe acceder a esta aplicación usando el mismo nombre de dominio y de máquina que se le ha especificado como *hostname* y *domainname* en el fichero **docker-compose.yml** Un ejemplo de conexión a este panel es:

> $ firefox http://owncloud.comcloud.com/owncloud

*Donde owncloud.comcloud.com se resuelve localmente es la IP asignada a la máquina DOCKER_HOST*

Las credenciales de acceso a este panel son ***owncloud/OwnCloud2015***


