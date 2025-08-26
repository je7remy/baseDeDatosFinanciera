

# 📊 Base de Datos Financiera

Este repositorio contiene el diseño y los procedimientos almacenados de una **base de datos para un sistema financiero y de facturación**. Incluye scripts SQL para la creación, consulta, inserción y actualización de información relacionada con clientes, empleados, productos, facturación y proveedores.

## 🚀 Características principales

* **Procedimientos almacenados** para consultas (clientes, productos, proveedores, facturas, métodos de pago, etc.).
* **Procedimientos de inserción y actualización** para gestionar información de forma eficiente.
* **Scripts de optimización** para relaciones entre entidades (clientes–países, empleados–departamentos, proveedores–países, etc.).
* **Documentación** básica de la estructura de la base de datos y casos de uso.

## 📂 Estructura del repositorio

```
baseDeDatosFinanciera/
│
├── db2/                                   # Scripts y pruebas adicionales
│
├── Procedimiento almacenado consultar ... # Consultas específicas (cliente, factura, proveedor, etc.)
├── Procedimiento almacenado insertar ...  # Inserción y actualización de entidades
├── script de la base de datos de facturacion.sql
├── informacion de la base de datos.sql
├── base de datos punto de venta.docx
├── Procedimiento almacenado.docx
└── ...
```

## 🗄️ Entidades principales

La base de datos gestiona información sobre:

* **Clientes**
* **Empleados**
* **Proveedores**
* **Productos**
* **Facturación**
* **Países y relaciones internacionales**

## ⚙️ Requisitos

* **Motor de base de datos**: SQL Server / MySQL (ajustar según el script).
* **Herramientas recomendadas**:

  * SQL Server Management Studio (SSMS)
  * DBeaver o HeidiSQL

## 📖 Uso

1. Clonar el repositorio:

   ```bash
   git clone https://github.com/tuusuario/baseDeDatosFinanciera.git
   cd baseDeDatosFinanciera
   ```
2. Ejecutar el script base:

   ```sql
   script de la base de datos de facturacion.sql
   ```
3. Importar los procedimientos almacenados para consultas e inserciones.

## 📌 Notas

* Este proyecto fue desarrollado con fines **académicos y de práctica**.
* Puede servir como base para sistemas de **facturación, contabilidad o gestión de punto de venta**.

## 👨‍💻 Autor

Desarrollado por **Jeremy José de la Cruz Pérez (@je7remy)**

---
