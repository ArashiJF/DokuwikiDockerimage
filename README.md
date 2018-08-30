# DokuwikiDockerimage

Este repositiorio contiene el Dockerfile necesario para crear un contenedor con dokuwiki de manera manual, es decir, en vez de utilizar una imagen ya con apache2 y php instalado, en este caso en el dockerfile se realizan los comandos correspondientes para a partir de una imagen basica de ubuntu (en este caso la version 16.04), se instale apache2 y php en el contenedor.

# Instalación

Para crear el container se debe primero, crear una carpeta donde estara alojado el Dockerfile, en esa misma carpeta debe estar adjunto la carpeta de instalación de dokuwiki.
Cuando esten en la misma carpeta, se debe abrir un bash en ese directorio y luego escribir el siguiente comando:

docker build -t dokuwiki .

Este comando montará el container.

Luego para poder ejecutar dicho container, se debe escribir el siguiente comando:

docker run -d -p 8080:80 dokuwiki
