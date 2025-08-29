# Backend - Proyecto de Registro de Clientes

Este es el backend desarrollado en Spring Boot para manejar el registro de clientes y la consulta de listas desplegables como países, departamentos, ciudades, marcas y tipos de identificación.

## Tecnologías utilizadas
- Java 17
- Spring Boot
- Spring Data JPA
- MySQL
- Maven

## Funcionalidades principales
- CRUD de Cliente.
- Endpoints para obtener listas desplegables:
    - Países
    - Departamentos
    - Ciudades
    - Marcas
    - Tipos de identificación

## Base de datos
Se utilizó **MySQL** como gestor de base de datos.  
La estructura cuenta con tablas relacionadas para manejar la jerarquía de:
- País → Departamento → Ciudad.

## Experiencia durante el desarrollo
Al principio me costó un poco hacer las pruebas en Postman, sobre todo con el método POST que guarda los datos del cliente en la base de datos.  
Me daba errores y me tomó tiempo entender qué estaba pasando.  
Pero al final lo logré y conseguí que todos los métodos funcionaran correctamente

## Cómo ejecutar el proyecto
1. Clonar este repositorio.
2. Configurar la conexión a la base de datos en el archivo `application.properties`.
3. Ejecutar el proyecto desde tu IDE
