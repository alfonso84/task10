# Guía de Configuración

Para configurar correctamente tu entorno, sigue estos pasos en el orden indicado:

## 1. Leer el README Principal

Antes de comenzar, asegúrate de leer el [README Principal](../README.md) para obtener una visión general y los requisitos básicos del proyecto.

## 2. Entender la Arquitectura

Consulta la sección [Arquitectura](../architecture/README.md) para comprender la estructura y los componentes de la solución.

## 3. Instalar las Aplicaciones

Sigue las instrucciones en la sección [InstalaciónAuthentik](../install/authentik/README.md) y [InstalaciónFirezone](../install/firezone/README.md)para instalar las aplicaciones de Firezone y Authentik.

## 4. Configurar el Gateway

Realiza la configuración del gateway correspondiente siguiendo la guía en la sección [Configuración](CONFIG.md). Ten en cuenta que, en la versión de Cloud, la configuración del gateway debe hacerse manualmente.

## 5. Establecer la Conexión de la Aplicación

Configura la conexión de la aplicación siguiendo las instrucciones en la sección [Configuración](CONFIG.md). Aunque esta tarea se puede realizar mediante un script, hacerlo a través de la interfaz de usuario (UI) suele ser más rápido y sencillo.

## Consideraciones Adicionales

- **Versión de Cloud:** Estamos utilizando la versión de Cloud para simplificar el ejercicio y centrarnos exclusivamente en Authentik, que gestionará todos los usuarios, roles y políticas.
  
- **API de Firezone:** La versión de Firezone Cloud actualmente tiene su API en fase de beta cerrada (closed beta). Por lo tanto, el paso de configuración es manual por el momento.

- **Automatización:** La creación de usuarios, roles y políticas estará automatizada mediante scripts, los cuales puedes encontrar en la sección [Scripts].

Asegúrate de seguir cada paso y revisar la documentación correspondiente para una implementación exitosa.
