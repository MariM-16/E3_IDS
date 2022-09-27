# Docker Rails Web App

## Usabilidad de Desarrollo
 - Trabajar en la carpeta de **ruby_app**, todos los cambios de la aplicacion se mantienen ahi, docker solo hacer un "mirror" de esta carpeta para hacer andar la aplicacion.
 - Ver seccion de Docker Commands para hacer andar el contenedor de Docker, correr en el directorio donde se encuentre docker-compose.yml o desde aplicacion de docker.
 - Agregar mas aclaraciones...

## Docker Commands
 - Launch docker container  -> `docker-compose up --build`
 - Watch working docker images -> `docker ps`
 - Launch docker container shell -> `docker exec -it [container-id] bash`