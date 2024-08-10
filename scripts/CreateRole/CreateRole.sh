#!/bin/bash

# Variables de configuración
AUTHENTIK_URL="https://auth.example.com"
AUTHENTIK_API_TOKEN="YOUR_AUTHENTIK_API_TOKEN"

# Datos del nuevo rol
ROLE_NAME="Example Role"
ROLE_DESCRIPTION="Role with example permissions"

# Crear el nuevo rol
curl -X POST "$AUTHENTIK_URL/api/v1/roles/" \
     -H "Authorization: Bearer $AUTHENTIK_API_TOKEN" \
     -H "Content-Type: application/json" \
     -d '{
           "name": "'"$ROLE_NAME"'",
           "description": "'"$ROLE_DESCRIPTION"'"
         }'
