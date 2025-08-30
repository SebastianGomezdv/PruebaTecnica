// ***FRONTEND***

# Prueba Técnica - Formulario de Fidelización

Este proyecto es una aplicación web desarrollada con React que simula una página de inscripción para programas de fidelización de varias marcas reconocidas. El usuario puede registrarse una sola vez y acceder a los beneficios de todas las marcas participantes, visualizando un carrusel animado con los logos y enlaces a sus sitios oficiales.

## Características principales

- **Formulario de registro**: Permite a los usuarios inscribirse de manera sencilla
- **Página de inicio (HomePage)**: Presenta un diseño atractivo con un carrusel de marcas, dando la sensación de una página real de fidelización
- **Enlaces directos**: Cada logo en el carrusel redirige al sitio oficial de la marca correspondiente

## Experiencia personal

Este proyecto representa mi primera experiencia trabajando con React. Al principio, solo contaba con un formulario muy simple, pero decidí ir más allá y crear una Página principal para darle más vida y simular una página real de inscripción. Fue un reto importante para mí, ya que tuve que aprender nuevas herramientas y conceptos. Para lograrlo, me apoyé en inteligencia artificial, lo que me permitió resolver dudas y mejorar la calidad del código.

## Instalación

1. Clona el repositorio:
   ```
   git clone //poner direccion de github repo aqui 
   ```
2. Instala las dependencias:
   ```
   npm install 
   ```
3. Inicia la aplicación:
   ```
   npm run dev
   ```

## Tecnologías utilizadas

- React (ultima versión)
- JS (para el consumo de la API)
- CSS

// **BACKEND**

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

Se puede utilizar archivo dump.sql o fidelizacion.sql (Script de la base de datos)

## Experiencia durante el desarrollo
Al principio me costó un poco hacer las pruebas en Postman, sobre todo con el método POST que guarda los datos del cliente en la base de datos.  
Me daba errores y me tomó tiempo entender qué estaba pasando.  
Pero al final lo logré y conseguí que todos los métodos funcionaran correctamente

## Cómo ejecutar el proyecto
1. Clonar este repositorio.
2. Configurar la conexión a la base de datos en el archivo `application.properties`.
3. Ejecutar el proyecto desde tu IDE
