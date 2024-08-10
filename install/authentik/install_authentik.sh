#!/bin/bash

# Actualiza la lista de paquetes
apt update

# Instala Docker
apt install -y docker.io

# Añade la clave GPG oficial de Docker
sudo apt-get update
sudo apt-get install -y ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Añade el repositorio de Docker a las fuentes de Apt
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Actualiza la lista de paquetes después de añadir el repositorio de Docker
sudo apt-get update

# Instala Docker Compose
sudo apt-get install -y docker-compose-plugin

# Descarga el archivo docker-compose.yml para Authentik
wget https://goauthentik.io/docker-compose.yml

# Configura variables de entorno
echo "PG_PASS=$(openssl rand -base64 36 | tr -d '\n')" >> .env
echo "AUTHENTIK_SECRET_KEY=$(openssl rand -base64 60 | tr -d '\n')" >> .env

# Descarga las imágenes de Docker y levanta los contenedores
docker compose pull
docker compose up -d
