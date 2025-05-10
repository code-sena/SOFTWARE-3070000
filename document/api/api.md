# 🌐 ¿Qué es una API?

Una **API (Application Programming Interface)** permite que dos sistemas se comuniquen entre sí a través de un conjunto de reglas y protocolos. En el contexto web, las **API REST** son las más comunes, y operan sobre HTTP mediante **verbos** que definen el tipo de acción a realizar sobre un recurso.

---

## 🔄 Verbos HTTP Comunes

| Verbo  | Propósito                          | Ejemplo de uso                          |
|--------|------------------------------------|------------------------------------------|
| **POST**   | Crear un nuevo recurso              | Crear un nuevo usuario o factura         |
| **PUT**    | Actualizar completamente un recurso | Modificar todos los datos de un producto |
| **DELETE** | Eliminar un recurso                 | Borrar un cliente del sistema            |
| **GET**    | Obtener datos de un recurso         | Consultar la lista de productos          |

---

## 📘 Documentación de la API: `/api/person`

La ruta `/api/person` permite gestionar información de personas a través de operaciones CRUD (Crear, Leer, Actualizar y Eliminar). A continuación se detallan los métodos disponibles, los verbos HTTP asociados y los atributos del recurso.

### 🧾 Atributos del recurso `person`

| Atributo  | Tipo de dato | Descripción                             |
|-----------|--------------|------------------------------------------|
| `id`      | INT          | Identificador único de la persona        |
| `name`    | VARCHAR      | Nombre                                   |
| `lastname`| VARCHAR      | Apellido                                 |
| `phone`   | VARCHAR      | Número telefónico                        |
| `email`   | VARCHAR      | Correo electrónico                       |
| `estatus` | TINYINT      | Estado del registro (1 = activo, 0 = inactivo) |

---

### 🔄 Endpoints y Métodos

| Método         | Verbo HTTP | Descripción                                       | Ejemplo de Endpoint         |
|----------------|-------------|--------------------------------------------------|-----------------------------|
| `all`          | `GET`       | Obtiene la lista completa de personas            | `GET /api/person`           |
| `findById`     | `GET`       | Consulta los datos de una persona por su ID      | `GET /api/person/{id}`      |
| `deleteById`   | `DELETE`    | Elimina una persona específica por su ID         | `DELETE /api/person/{id}`   |
| `save`         | `POST`      | Crea una nueva persona con los datos enviados    | `POST /api/person`          |
| `update`       | `PUT`       | Actualiza todos los datos de una persona existente | `PUT /api/person/{id}`    |

---

### 🧩 Resumen de operaciones CRUD

| Operación    | Verbo HTTP | Ruta                       |
|--------------|------------|----------------------------|
| Crear        | `POST`     | `/api/person`              |
| Leer (todos) | `GET`      | `/api/person`              |
| Leer (uno)   | `GET`      | `/api/person/{id}`         |
| Actualizar   | `PUT`      | `/api/person/{id}`         |
| Eliminar     | `DELETE`   | `/api/person/{id}`         |



# Ejemplo gráfico 

!["API"](API.png)