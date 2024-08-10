# Descripción de la Arquitectura

Esta arquitectura utiliza **Firezone** y **Authentik** para crear un entorno seguro y eficiente para pruebas y autenticación. La configuración se divide en tres componentes principales:

1. **Firezone Cloud Server Side (Gratuito)**
2. **Authentik Selfhost en una Subnet Pública**
3. **Agente de Firezone en una Subnet Privada**

## Componentes

### 1. Firezone Cloud Server Side (Gratuito)
**Firezone** ofrece un servicio en la nube gratuito que facilita la configuración de una VPN segura. Aunque es posible auto-alojar Firezone, el uso del servidor en la nube es ideal para pruebas y desarrollo debido a su facilidad de configuración y mantenimiento.

**Características:**
- **Gratuito y gestionado por la nube.**
- **Fácil de configurar para pruebas rápidas.**
- **Puede ser reemplazado por una instalación self-hosted si es necesario.**

### 2. Authentik Selfhost en una Subnet Pública
**Authentik** es una solución de gestión de identidades y accesos que se ejecuta en una **subnet pública**. Esto permite que Authentik sea accesible desde la red externa para la autenticación y el manejo de identidades.

**Características:**
- **Self-hosted:** Instancia de Authentik alojada por el usuario en lugar de usar una solución en la nube.
- **Subnet Pública:** Permite el acceso a Authentik desde internet para autenticar usuarios.
- **Requiere configuración de seguridad:** Debe estar bien configurado para proteger la red pública y los datos.

### 3. Agente de Firezone en una Subnet Privada
El **agente de Firezone** se instala en una **subnet privada** para proporcionar un acceso seguro a la red interna y permitir la conexión con el servidor de Firezone en la nube.

**Características:**
- **Subnet Privada:** Mantiene el agente dentro de una red segura y aislada.
- **Conexión con Firezone:** Facilita la conexión segura a través de la VPN gestionada por Firezone.

## Flujo de Trabajo

1. **Configuración de Authentik en la Subnet Pública:**
   - Instalar y configurar Authentik en una subnet pública.
   - Asegurarse de que Authentik esté accesible desde internet para manejar autenticación de usuarios.

2. **Configuración del Agente de Firezone en la Subnet Privada:**
   - Instalar el agente de Firezone en una subnet privada.
   - Configurar el agente para que se conecte al servidor de Firezone en la nube.
   - Establecer reglas de firewall y políticas de red para permitir la comunicación segura entre el agente y el servidor de Firezone.

3. **Integración con Firezone Cloud Server Side:**
   - Utilizar el servidor en la nube gratuito de Firezone para gestionar la VPN.
   - Configurar la VPN para permitir el acceso a la red privada donde se encuentra el agente de Firezone.

4. **Flujo de Autenticación y Acceso:**
   - Los usuarios se autentican a través de Authentik, que está en la subnet pública.
   - Una vez autenticados, los usuarios pueden conectarse a través de la VPN proporcionada por Firezone.
   - El agente de Firezone en la subnet privada facilita la conexión segura y el acceso a los recursos internos.

## Diagrama de Arquitectura

![Descripción de la imagen](doc/images/image3.png)