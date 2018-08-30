# DokuwikiDockerimage

Este repositiorio contiene el Dockerfile necesario para crear un contenedor con dokuwiki de manera manual, es decir, en vez de utilizar una imagen ya con apache2 y php instalado, en este caso en el dockerfile se realizan los comandos correspondientes para a partir de una imagen basica de ubuntu (en este caso la version 16.04), se instale apache2 y php en el contenedor.

# Instalación

Para crear el container se debe primero, crear una carpeta donde estara alojado el Dockerfile, en esa misma carpeta debe estar adjunto la carpeta de instalación de dokuwiki.
Cuando esten en la misma carpeta, se debe abrir un bash en ese directorio y luego escribir el siguiente comando:

docker build -t dokuwiki .

Este comando montará el container.

Luego para poder ejecutar dicho container, se debe escribir el siguiente comando:

docker run -d -p 8080:80 dokuwiki

# Acceso

Para poder accesar a la pagina en el navegador, solo hay que accesar localhost:8080, y se abrirá el index de dokuwiki

En todo caso no es necesario usar el puerto 8080, se puede cambiar a conveniencia propia.


# Usando Docker Compose

En caso de querer utilizar el comando docker-compose up (por conveniencia mas que todo), podemos aprovechar el hecho de que ya tenemos un Dockerfile para el build, en el caso en que no se quiera usar un dockerfile para el build, solo seria necesario reemplazar en el docker-compose-yml la linea de build por image: y colocar que imagen se quiere usar para ese contenedor.

Por organizacion, se debe hacer los mismos pasos que como si se quisiera usar el dockerfile solamente, es decir
- Se crea una carpeta para el proyecto
- Dentro de dicha carpeta agregar el archivo de instalacion de dokuwiki
- Crear una carpeta llamada apachephp, en ella colocar el dockerfile que se encuentra en este repositorio
- En la raiz de la carpeta del proyecto colocar el docker-compose.yml que se encuentra en este repositorio
- Abrir un bash en el directorio de la carpeta del proyecto y escribir el siguiente comando:
  docker-compose up

Con esto ya se puede accesar al index de dokuwiki, si se desea cambiar los puertos solo se necesita editar el archivo docker-compose.yml y editar la linea llamada "ports: ", recordamos que el 80 no se debe cambiar ya que ese es el puerto que se esta exponiendo del container, si se desea cambiar el puerto que el container tiene abierto se debe modificar tambien el Dockerfile!.
