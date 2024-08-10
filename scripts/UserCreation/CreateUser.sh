#!/bin/bash

# Variables de configuración
AUTHENTIK_URL="https://auth.example.com"
AUTHENTIK_API_TOKEN="YOUR_AUTHENTIK_API_TOKEN"

# Datos del nuevo usuario
USER_EMAIL="newuser@example.com"
USER_USERNAME="newuser"
USER_PASSWORD="securepassword"

# Crear el nuevo usuario
curl -X POST "$AUTHENTIK_URL/api/v1/users/" \
     -H "Authorization: Bearer $AUTHENTIK_API_TOKEN" \
     -H "Content-Type: application/json" \
     -d '{
           "email": "'"$USER_EMAIL"'",
           "username": "'"$USER_USERNAME"'",
           "password": "'"$USER_PASSWORD"'"
         }'
