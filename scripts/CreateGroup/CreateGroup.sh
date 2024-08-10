#!/bin/bash

# Variables de configuración
AUTHENTIK_URL="https://auth.example.com"
AUTHENTIK_API_TOKEN="YOUR_AUTHENTIK_API_TOKEN"  # Reemplaza con tu token de API

# Datos del nuevo grupo
GROUP_NAME="New Group"
GROUP_DESCRIPTION="Description of the new group"

# Crear el nuevo grupo
curl -X POST "$AUTHENTIK_URL/api/v1/groups/" \
     -H "Authorization: Bearer $AUTHENTIK_API_TOKEN" \
     -H "Content-Type: application/json" \
     -d '{
           "name": "'"$GROUP_NAME"'",
           "description": "'"$GROUP_DESCRIPTION"'"
         }'
