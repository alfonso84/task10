#!/bin/bash

# Variables de configuración
AUTHENTIK_URL="https://auth.example.com"
AUTHENTIK_API_TOKEN="your_actual_token_here"  # Reemplaza con tu token de API

# Datos del rol y del grupo
ROLE_ID="role_id_here"  # Reemplaza con el ID del rol al que quieres asignar el grupo
GROUP_ID="group_id_here"  # Reemplaza con el ID del grupo que quieres asignar al rol

# Asignar el grupo al rol
curl -X POST "$AUTHENTIK_URL/api/v1/roles/$ROLE_ID/groups/$GROUP_ID/" \
     -H "Authorization: Bearer $AUTHENTIK_API_TOKEN" \
     -H "Content-Type: application/json"
