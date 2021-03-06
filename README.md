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

Redmine
-------------

La imagen que proveemos como base del servicio Redmine se trata de una instalación por defecto de este servidor disponible para Ubuntu utilizando la siguiente [guia](https://www.redmine.org/projects/redmine/wiki/HowTo_Install_Redmine_231_On_Ubuntu_1204_with_git_and_Redmine_Git_Hosting_plugin).


#### Ejecución

Si nuestra intención es levantar una imagen únicamente con este servicio lo que debemos hacer es:

>  1. Posicionarnos en el directorio *services/redmine* 
>  2. Ejecutar *docker-compose up*

#### Conexión

El puerto en el que escucha el Docker Host la aplicación del Panel de Administración de Redmine es el 3000 a través de HTTP. Un ejemplo de conexión a este panel es:

> $ firefox http://DOCKER_HOST_IP:3000/

*Donde DOCKERHOST_IP es la IP asignada a la máquina DOCKER_HOST*

Las credenciales de acceso a este panel son ***admin/admin***

Zimbra
-------------

La imagen que proveemos como base del servicio Zimbra se trata de una instalación parcial donde se ha llevado a cabo el despliegue de los binarios necesarios para la ejecución del servicio en la imagen base. Se ha delegado la parametrización del servidor Zimbra como punto de entrada a la imagen cuando se lanza un contenedor con ella. Hemos llevado a cabo la siguiente [guia](https://www.jorgedelacruz.es/tag/zimbra-docker/).


#### Ejecución

Si nuestra intención es levantar una imagen únicamente con este servicio lo que debemos hacer es:

>  1. Posicionarnos en el directorio *services/openfire* 
>  2. Ejecutar *docker-compose up*

#### Parametrización

El correcto funcionamiento de esta imagen depende de la configuración de tres parámetros con caracter obligatorio:

 - Hostname
 - Nombre de dominio
 - Contraseña de servicios

Todos ellos son personalizables y no tienen un valor único obligado. Su configuración se puede hacer mediante el documento *docker-compose.yml* que se encuentra en el mismo directorio del servicio o mediante linea de comando cuando levantamos un contenedor con *docker run*. Un ejemplo de configuración mediante *docker-compose.yml* lo encontramos en el directorio de este servicio (*services/zimbra*). Por línea de comandos podremos levantar un contenedor de la siguiente forma:

> $ docker run -P -d -e PASSWORD=micontraseñapersonalizada -h hostname.domainname.top zimbra_zimbra_1 

*Donde zimbra_zimbra_1 es el nombre de la imagen generada con docker build*

#### Conexión

El puerto en el que escucha el Docker Host la aplicación del Panel de Administración de Openfire es el 7071 a través de HTTPS y el 443 para la aplicación de cliente de correo Web también a través de HTTPS. Un ejemplo de conexión a este panel es:

> $ firefox https://DOCKER_HOST_IP:7071/
> > $ firefox https://DOCKER_HOST_IP/

*Donde DOCKERHOST_IP es la IP asignada a la máquina DOCKER_HOST*

Las credenciales de acceso a este panel son ***admin/Zimbra2015*** para el panel de administración
