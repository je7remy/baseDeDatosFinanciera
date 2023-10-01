CREATE DATABASE facturacion;
USE facturacion ;

-- Crear la tabla Cliente 'drop table if exists cliente;'

CREATE TABLE cliente (
    id_cliente INT PRIMARY KEY auto_increment not null,
    nombre_cliente VARCHAR(100),
    apellido_cliente VARCHAR(50),
    cedula_cliente VARCHAR(14), 
    direccion_cliente VARCHAR(255),
    pais_id smallint,
    sexo_cliente CHAR(1),
    email_cliente VARCHAR(100),
    limiteCred_cliente DECIMAL(15, 2),
    status_cliente CHAR(1) default 'A',
    Created_at DATETIME default current_timestamp,
    updated_at DATETIME default current_timestamp on update current_timestamp
);

-- Crear la tabla Contactos
CREATE TABLE contactos (
    id_contactos INT PRIMARY KEY auto_increment not null,
    id_entidad INT,
    tipo_entidad CHAR(1),
    tipo_contacto ENUM('CELULAR', 'FAX', 'CASA', 'TRABAJO'),
    Numero VARCHAR(14),
    status CHAR(1) default 'A',
    Created_at DATETIME default current_timestamp,
    updated_at DATETIME default current_timestamp on update current_timestamp
);


-- Crear la tabla Pais
CREATE TABLE pais (
    id_pais INT PRIMARY KEY auto_increment not null,
    nombre_pais VARCHAR(255),
    codigo_pais VARCHAR(10),
    status_dptos VARCHAR(50),
    Created_at DATETIME default current_timestamp,
    updated_at DATETIME default current_timestamp on update current_timestamp
);


-- Crear la tabla Empleado
CREATE TABLE empleado (
    id_empleado INT PRIMARY KEY auto_increment not null,
    nombre_empleado VARCHAR(255),
    apellido_empleado VARCHAR(255),
    fecha_nac DATE,
    fecha_contratacion DATE,
    direccion_empleado VARCHAR(255),
    cedula_empleado VARCHAR(20),
    dpto_id INT,
    sexo_empleado CHAR(1),
    email_empleado VARCHAR(255),
    salario_empleado DECIMAL(15, 2),
    status_empleado CHAR(1) default 'A',
    Created_at DATETIME default current_timestamp,
    updated_at DATETIME default current_timestamp on update current_timestamp
);


-- Crear la tabla Dptos
CREATE TABLE dptos (
    id_dptos INT PRIMARY KEY auto_increment not null,
    nombre_dptos VARCHAR(255),
    estatus_dptos VARCHAR(50),
    Created_at DATETIME default current_timestamp,
    updated_at DATETIME default current_timestamp on update current_timestamp
);


-- Crear la tabla Producto
CREATE TABLE producto (
    id_producto INT PRIMARY KEY auto_increment not null,
    nombre_producto VARCHAR(255),
    desripcion_producto VARCHAR(255),
    tipo_producto VARCHAR(255),
    costo_producto DECIMAL(15, 2),
    precioVenta_producto DECIMAL(15, 2),
    stock_producto INT,
    cbarra_producto VARCHAR(255),
    proveedor_id INT,
    status_producto CHAR(1) default 'A',
    Created_at DATETIME default current_timestamp,
    updated_at DATETIME default current_timestamp on update current_timestamp
);


-- Crear la tabla Proveedor
CREATE TABLE proveedor (
    id_proveedor INT PRIMARY KEY auto_increment not null,
    rnc_cedula VARCHAR(20),
    nombre_proveedor VARCHAR(255),
    contacto_proveedor VARCHAR(255),
    direccion_proveedor VARCHAR(255),
    pais_id INT,
    email_proveedor VARCHAR(255),
    status_proveedor CHAR(1) default 'A',
    Created_at DATETIME default current_timestamp,
    updated_at DATETIME default current_timestamp on update current_timestamp
);


-- Crear la tabla Factura
CREATE TABLE factura (
    id_factura INT PRIMARY KEY auto_increment not null,
    cliente_id INT,
    empleado_id INT,
    fecha_factura DATE,
    tipo_factura VARCHAR(50),
    fecha_vence DATE,
    dias_vencimiento INT,
    total DECIMAL(15, 2),
    itbis DECIMAL(15, 2),
    desc_factura DECIMAL(15, 2),
    formaPago VARCHAR(50),
    ncf VARCHAR(50),
    descripcion TEXT,
    Created_at DATETIME default current_timestamp,
    updated_at DATETIME default current_timestamp on update current_timestamp
);


-- Crear la tabla DetalleFactura
CREATE TABLE detalleFactura (
    id_detalleFactura INT PRIMARY KEY auto_increment not null,
    factura_id INT,
    producto_id INT,
    cantidad INT,
    precio_unitario DECIMAL(15, 2),
    subtotal DECIMAL(15, 2)
);


-- Crear la tabla MetodoPago
CREATE TABLE metodoPago (
    id_metodoPago INT PRIMARY KEY auto_increment not null,
    nombre_metodo VARCHAR(255)
);

