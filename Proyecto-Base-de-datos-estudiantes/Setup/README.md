# Student Database Management System

Este proyecto forma parte de la certificación de Relational Databases de FreeCodeCamp. Se centra en la creación, migración y consulta de una base de datos relacional que gestiona información académica.

## 📊 Estructura del Proyecto

La carpeta se divide en dos componentes principales:

* **/Setup**: Contiene los activos necesarios para recrear el entorno de datos.
    * `students.sql`: El esquema completo de la base de datos (DDL).
    * `students.csv` & `courses.csv`: Datasets originales con la información académica.
    * `insert_data.sh`: Un script robusto en Bash que automatiza la limpieza y carga de datos desde los CSV hacia PostgreSQL, manejando relaciones entre tablas.

* **/Consultas**: Scripts analíticos.
    * `querys.sh`: Un conjunto de consultas SQL avanzadas para la extracción de métricas clave (GPA promedio, distribución de estudiantes por carrera, etc.).

## 🛠️ Tecnologías Utilizadas
* **Database:** PostgreSQL
* **Scripting:** Bash
* **Data Handling:** CSV Parsing

## 📈 Conceptos de Ciencia de Datos Aplicados
En este proyecto apliqué conceptos de:
* **Normalización de datos:** Diseño de tablas para evitar redundancias.
* **ETL (Extract, Transform, Load):** Automatización del flujo de datos desde archivos planos a un motor relacional.
* **Análisis Descriptivo:** Consultas de agregación para entender la distribución del alumnado.
