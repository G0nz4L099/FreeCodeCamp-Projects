# Bicycle Rental System (SQL & Bash)

Un sistema de gestión de inventario y clientes desarrollado para una tienda de alquiler de bicicletas. Combina la potencia de PostgreSQL con una interfaz de línea de comandos (CLI) interactiva.

## 📂 Contenido
* `bikes.sql`: El archivo de respaldo (dump) de la base de datos que incluye tablas de inventario (`bikes`), clientes (`customers`) y el registro de alquileres (`rentals`).
* `bike-shop.sh`: Programa principal desarrollado en Bash. Gestiona la lógica de negocio:
    * Verificación de disponibilidad de bicicletas.
    * Registro de nuevos clientes.
    * Procesamiento de alquileres y devoluciones mediante actualizaciones en tiempo real en la DB.

## ⚙️ Características Técnicas
* **Integridad de Datos:** Uso de llaves foráneas y restricciones para asegurar que el inventario se mantenga consistente.
* **Automatización:** El script de Bash maneja las entradas del usuario y realiza consultas dinámicas a la base de datos.
* **SQL DML:** Implementación de `INSERT`, `UPDATE` y `JOIN` para reflejar el estado actual del negocio.

## 🚀 Cómo utilizarlo
1. Recrear la base de datos: `psql -U postgres < bikes.sql`
2. Dar permisos de ejecución: `chmod +x bike-shop.sh`
3. Iniciar el programa: `./bike-shop.sh`
