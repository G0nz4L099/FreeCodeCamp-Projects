# Relational Database Project: Celestial Bodies 🌌

Este proyecto forma parte de la certificación de **Relational Databases** de **freeCodeCamp**. El objetivo principal fue diseñar y estructurar una base de datos PostgreSQL desde cero, aplicando conceptos fundamentales de normalización y modelado de datos.

## 🛠️ Tecnologías Utilizadas
* **PostgreSQL:** Motor de base de datos relacional.
* **SQL:** Consultas DDL (Data Definition Language) y DML (Data Manipulation Language).
* **Git/GitHub:** Control de versiones para la gestión del proyecto.
* **Linux Terminal:** Administración de la base de datos mediante CLI.

## 📋 Características del Proyecto
En este workshop desarrollé una base de datos denominada `universe`, la cual incluye:
- **Tablas Relacionadas:** Estructuras para `galaxy`, `star`, `planet` , `moon` y 'satellite'
- **Relaciones de Clave Foránea (Foreign Keys):** Implementación de relaciones uno-a-muchos para mantener la integridad referencial.
- **Tipos de Datos:** Uso estratégico de `INT`, `NUMERIC`, `TEXT`, `VARCHAR` y `BOOLEAN`.
- **Restricciones (Constraints):** Aplicación de `UNIQUE`, `NOT NULL` y `PRIMARY KEY` para garantizar la calidad de los datos.

## 🚀 Cómo visualizar el proyecto
Si deseas replicar la base de datos en tu entorno local, puedes utilizar el archivo `.sql` incluido en este repositorio:

1. Asegúrate de tener instalado PostgreSQL.
2. Crea una base de datos vacía: `CREATE DATABASE universe;`
3. Importa el archivo: 
   ```bash
   psql -U tu_usuario universe < universe.sql