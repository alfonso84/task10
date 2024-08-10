#!/bin/bash

# Variables de configuración
AUTHENTIK_URL="https://auth.example.com"  # Reemplaza con la URL de tu instancia de Authentik
AUTHENTIK_API_TOKEN="your_actual_token_here"  # Reemplaza con tu token de API

# Datos del usuario y del grupo
USER_ID="user_id_here"  # Reemplaza con el ID del usuario que quieres añadir al grupo
GROUP_ID="group_id_here"  # Reemplaza con el ID del grupo al que quieres añadir el usuario

# Añadir el usuario al grupo
curl -X POST "$AUTHENTIK_URL/api/v1/groups/$GROUP_ID/users/$USER_ID/" \
     -H "Authorization: Bearer $AUTHENTIK_API_TOKEN" \
     -H "Content-Type: application/json"
