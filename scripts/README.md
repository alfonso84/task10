Para generar el token, utilizar ubicarse en USER INTERFACE , buscar la tuerca (Settings) y generar token
![Descripción de la imagen](../doc/images/image92.png)

Reemplazar el token en cada script deseado al igual que sus valores correspondientes.
Orden de ejecucion:
-CreateUser
-CreateGroup
-CreateRole
-AddUser2Group
-AsignRoleGroup

Obtener los IDs 

Obtener todos los usuarios:
curl -X GET "$AUTHENTIK_URL/api/v1/users/" -H "Authorization: Bearer $AUTHENTIK_API_TOKEN" -H "Content-Type: application/json"

Obtener todos los grupos:
curl -X GET "$AUTHENTIK_URL/api/v1/groups/" -H "Authorization: Bearer $AUTHENTIK_API_TOKEN" -H "Content-Type: application/json"

 Obtener todos los Roles:
curl -X GET "$AUTHENTIK_URL/api/v1/roles/" -H "Authorization: Bearer $AUTHENTIK_API_TOKEN" -H "Content-Type: application/json"