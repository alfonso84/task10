#!/bin/bash

# Solicita al usuario que ingrese el token de Firezone
read -p "Ingrese su token de Firezone: " FIREZONE_TOKEN

# Verifica que el token no esté vacío
if [ -z "$FIREZONE_TOKEN" ]; then
  echo "El token no puede estar vacío. Abortando..."
  exit 1
fi

# Ejecuta el script de instalación de Firezone utilizando el token proporcionado
bash <(curl -fsSL https://raw.githubusercontent.com/firezone/firezone/main/scripts/gateway-systemd-install.sh) \
  FIREZONE_TOKEN="$FIREZONE_TOKEN"
