# Descripción del Script de Instalación de Authentik

Este script automatiza el proceso de instalación y configuración de **Docker** y **Docker Compose**, así como la configuración y despliegue de **Authentik** usando Docker. Authentik es una solución de gestión de identidades y accesos.

## ¿Qué Hace el Script?

1. **Actualiza la Lista de Paquetes:**
   - El script inicia actualizando la lista de paquetes del sistema para asegurarse de que todas las instalaciones posteriores se realicen con la versión más reciente de los paquetes.

2. **Instala Docker:**
   - Instala Docker en el sistema, que es necesario para ejecutar contenedores de aplicaciones.

3. **Añade la Clave GPG Oficial de Docker:**
   - Descarga y añade la clave GPG oficial de Docker para asegurar la autenticidad del repositorio de Docker.

4. **Añade el Repositorio de Docker a las Fuentes de Apt:**
   - Agrega el repositorio oficial de Docker a la lista de fuentes de paquetes de Apt. Esto permite instalar Docker y Docker Compose desde los repositorios oficiales de Docker.

5. **Actualiza la Lista de Paquetes Después de Añadir el Repositorio de Docker:**
   - Actualiza nuevamente la lista de paquetes para incluir los paquetes disponibles en el nuevo repositorio de Docker.

6. **Instala Docker Compose:**
   - Instala el plugin Docker Compose, que se utiliza para definir y ejecutar aplicaciones multi-contenedor.

7. **Descarga el Archivo `docker-compose.yml` para Authentik:**
   - Descarga el archivo `docker-compose.yml` desde el sitio web de Authentik. Este archivo contiene la configuración necesaria para desplegar Authentik usando Docker.

8. **Configura Variables de Entorno:**
   - Genera y almacena variables de entorno necesarias para la configuración de Authentik:
     - `PG_PASS`: Contraseña aleatoria para la base de datos PostgreSQL.
     - `AUTHENTIK_SECRET_KEY`: Clave secreta aleatoria para Authentik.

9. **Descarga las Imágenes de Docker y Levanta los Contenedores:**
   - Utiliza Docker Compose para descargar las imágenes de Docker definidas en el archivo `docker-compose.yml` y levanta los contenedores en segundo plano.

## Instrucciones para el Usuario

1. **Guardar el Script:**
   - Copia el código proporcionado en un archivo, por ejemplo, `install_authentik.sh`.

2. **Dar Permisos de Ejecución:**
   - Ejecuta `chmod +x install_authentik.sh` para hacer que el script sea ejecutable.

3. **Ejecutar el Script:**
   - Ejecuta el script con `./install_authentik.sh`. El script se encargará de realizar todas las instalaciones y configuraciones necesarias.

Este script simplifica el proceso de configuración de Authentik al automatizar la instalación de Docker, Docker Compose, y la configuración de Authentik usando Docker. Es ideal para configurar rápidamente un entorno de autenticación seguro y funcional.
