INSERT INTO cliente (nombre_cliente, apellido_cliente, cedula_cliente, direccion_cliente, pais_id, sexo_cliente, email_cliente, limiteCred_cliente, status_cliente)
VALUES
  ('Laura', 'García', '1234567890', '1234 Calle Principal, Ciudad', 1, 'F', 'laura@example.com', 5000.00, 'A'),
  ('Carlos', 'Pérez', '2345678901', '5678 Calle Secundaria, Ciudad', 2, 'M', 'carlos@example.com', 7000.00, 'A'),
  ('Ana', 'Martínez', '3456789012', '910 Calle Residencial, Ciudad', 3, 'F', 'ana@example.com', 6000.00, 'A'),
  ('Luis', 'Sánchez', '4567890123', '1112 Avenida Principal, Ciudad', 1, 'M', 'luis@example.com', 5500.00, 'A'),
  ('María', 'Gómez', '5678901234', '1314 Calle Central, Ciudad', 2, 'F', 'maria@example.com', 6500.00, 'A'),
  ('Daniel', 'López', '6789012345', '1516 Calle Norte, Ciudad', 3, 'M', 'daniel@example.com', 7200.00, 'A'),
  ('Elena', 'Díaz', '7890123456', '1718 Calle Sur, Ciudad', 1, 'F', 'elena@example.com', 4800.00, 'A'),
  ('Sergio', 'Hernández', '8901234567', '1920 Avenida Oeste, Ciudad', 2, 'M', 'sergio@example.com', 6800.00, 'A'),
  ('Javier', 'Rodríguez', '9012345678', '2122 Calle Este, Ciudad', 3, 'M', 'javier@example.com', 6000.00, 'A'),
  ('Laura', 'Fernández', '0123456789', '2324 Avenida Sur, Ciudad', 1, 'F', 'laura.fernandez@example.com', 5500.00, 'A');

INSERT INTO contactos (id_entidad, tipo_entidad, tipo_contacto, Numero, status)
VALUES
  (1, 'C', 'CELULAR', '1234567890', 'A'),
  (1, 'P', 'FAX', '9876543210', 'A'),
  (2, 'C', 'CASA', '5551234567', 'A'),
  (2, 'P', 'CELULAR', '9998887777', 'A'),
  (3, 'C', 'TRABAJO', '1112223333', 'A'),
  (3, 'P', 'CELULAR', '4445556666', 'A'),
  (4, 'C', 'CASA', '7778889999', 'A'),
  (4, 'P', 'FAX', '2221110000', 'A'),
  (5, 'C', 'CELULAR', '3334445555', 'A'),
  (5, 'P', 'TRABAJO', '6667778888', 'A');

INSERT INTO pais (nombre_pais, codigo_pais, status_dptos) VALUES
('Estadolandia', 'ESD', 'Activo'),
('Ficticia', 'FIC', 'Activo'),
('Imaginaria', 'IMA', 'Inactivo'),
('PaisdelosSueños', 'PDS', 'Activo'),
('Ilusiónlandia', 'ILL', 'Inactivo'),
('Esperanza', 'ESP', 'Activo'),
('Sueñoland', 'SUL', 'Inactivo'),
('Creacionalia', 'CRE', 'Activo'),
('Fantasia', 'FAN', 'Activo'),
('Magica', 'MAG', 'Inactivo');

INSERT INTO empleado (nombre_empleado, apellido_empleado, fecha_nac, fecha_contratacion, direccion_empleado, cedula_empleado, dpto_id, sexo_empleado, email_empleado, salario_empleado)
VALUES
('Juan', 'Pérez', '1990-05-15', '2015-08-20', 'Calle 123, Ciudad', '123456789', 1, 'M', 'juan.perez@example.com', 55000.00),
('María', 'González', '1988-03-20', '2017-02-10', 'Avenida 456, Ciudad', '987654321', 2, 'F', 'maria.gonzalez@example.com', 60000.00),
('Luis', 'Martínez', '1992-07-10', '2018-11-05', 'Calle 789, Ciudad', '876543210', 3, 'M', 'luis.martinez@example.com', 52000.00),
('Ana', 'Sánchez', '1995-01-25', '2016-06-18', 'Avenida 789, Ciudad', '543216789', 1, 'F', 'ana.sanchez@example.com', 59000.00),
('Carlos', 'López', '1987-11-30', '2019-09-02', 'Calle 234, Ciudad', '876543211', 2, 'M', 'carlos.lopez@example.com', 56000.00),
('Laura', 'Hernández', '1993-09-05', '2017-04-15', 'Avenida 567, Ciudad', '654321987', 3, 'F', 'laura.hernandez@example.com', 58000.00),
('David', 'Gómez', '1989-12-12', '2014-08-10', 'Calle 567, Ciudad', '123987456', 1, 'M', 'david.gomez@example.com', 54000.00),
('Sofía', 'Díaz', '1994-06-28', '2018-03-25', 'Avenida 123, Ciudad', '789123456', 2, 'F', 'sofia.diaz@example.com', 57000.00),
('Pedro', 'Perez', '1991-02-18', '2016-09-12', 'Calle 890, Ciudad', '456789123', 3, 'M', 'pedro.perez@example.com', 53000.00),
('Elena', 'Martín', '1986-08-08', '2019-12-30', 'Avenida 890, Ciudad', '654789321', 1, 'F', 'elena.martin@example.com', 61000.00);

INSERT INTO dptos (nombre_dptos, estatus_dptos) VALUES
('Departamento de Ventas', 'Activo'),
('Departamento de Finanzas', 'Activo'),
('Departamento de Recursos Humanos', 'Inactivo'),
('Departamento de Tecnología', 'Activo'),
('Departamento de Logística', 'Inactivo'),
('Departamento de Marketing', 'Activo'),
('Departamento de Operaciones', 'Inactivo'),
('Departamento Legal', 'Activo'),
('Departamento de Investigación y Desarrollo', 'Activo'),
('Departamento de Atención al Cliente', 'Inactivo');

INSERT INTO producto (nombre_producto, desripcion_producto, tipo_producto, costo_producto, precioVenta_producto, stock_producto, cbarra_producto, proveedor_id)
VALUES
('Camiseta', 'Camiseta de algodón para hombres', 'Ropa', 20.00, 35.00, 100, '123456789', 1),
('Zapatillas deportivas', 'Zapatillas para correr para hombres', 'Calzado', 40.00, 70.00, 50, '987654321', 2),
('Teléfono móvil', 'Smartphone de última generación', 'Electrónica', 300.00, 500.00, 30, '543216789', 3),
('Portátil', 'Portátil de 15 pulgadas con procesador i7', 'Electrónica', 600.00, 900.00, 20, '234567890', 4),
('Libreta', 'Libreta de hojas rayadas tamaño A5', 'Papelería', 5.00, 10.00, 200, '678901234', 5),
('Cámara digital', 'Cámara digital compacta de 20MP', 'Electrónica', 150.00, 250.00, 15, '345678901', 1),
('Auriculares inalámbricos', 'Auriculares Bluetooth con cancelación de ruido', 'Electrónica', 25.00, 45.00, 80, '789012345', 2),
('Tableta gráfica', 'Tableta gráfica para diseño digital', 'Electrónica', 70.00, 120.00, 25, '901234567', 3),
('Silla de oficina', 'Silla ergonómica para oficina', 'Mobiliario', 50.00, 90.00, 40, '012345678', 4),
('Impresora multifunción', 'Impresora láser multifunción', 'Electrónica', 120.00, 200.00, 18, '345678912', 5);

INSERT INTO proveedor (rnc_cedula, nombre_proveedor, contacto_proveedor, direccion_proveedor, pais_id, email_proveedor)
VALUES
('00123456789', 'ProveedorA', 'Juan Pérez', 'Calle 123, Ciudad1', 1, 'proveedora@example.com'),
('00234567890', 'ProveedorB', 'María González', 'Avenida 456, Ciudad2', 2, 'proveedorb@example.com'),
('00345678901', 'ProveedorC', 'Luis Martínez', 'Calle 789, Ciudad3', 3, 'proveedorc@example.com'),
('00456789012', 'ProveedorD', 'Ana Sánchez', 'Avenida 890, Ciudad4', 1, 'proveedord@example.com'),
('00567890123', 'ProveedorE', 'Carlos López', 'Calle 234, Ciudad5', 2, 'proveedore@example.com'),
('00678901234', 'ProveedorF', 'Laura Hernández', 'Avenida 567, Ciudad6', 3, 'proveedorf@example.com'),
('00789012345', 'ProveedorG', 'David Gómez', 'Calle 890, Ciudad7', 1, 'proveedorg@example.com'),
('00890123456', 'ProveedorH', 'Sofía Díaz', 'Avenida 123, Ciudad8', 2, 'proveedorh@example.com'),
('00901234567', 'ProveedorI', 'Pedro Pérez', 'Calle 456, Ciudad9', 3, 'proveedori@example.com'),
('01012345678', 'ProveedorJ', 'Elena Martín', 'Avenida 678, Ciudad10', 1, 'proveedorj@example.com');


INSERT INTO factura (cliente_id, empleado_id, fecha_factura, tipo_factura, fecha_vence, dias_vencimiento, total, itbis, desc_factura, formaPago, ncf, descripcion)
VALUES
(1, 1, '2023-09-15', 'Venta', '2023-10-15', 30, 450.00, 54.00, 10.00, 'Tarjeta de crédito', 'B0101010101', 'Venta de productos diversos'),
(2, 2, '2023-09-17', 'Venta', '2023-10-17', 30, 600.00, 72.00, 15.00, 'Efectivo', 'B0202020202', 'Venta de electrónicos'),
(3, 3, '2023-09-18', 'Venta', '2023-10-18', 30, 750.00, 90.00, 20.00, 'Tarjeta de crédito', 'B0303030303', 'Venta de muebles'),
(4, 4, '2023-09-20', 'Venta', '2023-10-20', 30, 400.00, 48.00, 8.00, 'Efectivo', 'B0404040404', 'Venta de accesorios'),
(5, 5, '2023-09-22', 'Venta', '2023-10-22', 30, 550.00, 66.00, 12.00, 'Tarjeta de crédito', 'B0505050505', 'Venta de ropa'),
(6, 1, '2023-09-23', 'Venta', '2023-10-23', 30, 680.00, 81.60, 14.00, 'Efectivo', 'B0606060606', 'Venta de tecnología'),
(7, 2, '2023-09-25', 'Venta', '2023-10-25', 30, 900.00, 108.00, 25.00, 'Tarjeta de crédito', 'B0707070707', 'Venta de libros'),
(8, 3, '2023-09-26', 'Venta', '2023-10-26', 30, 520.00, 62.40, 11.00, 'Efectivo', 'B0808080808', 'Venta de suministros de oficina'),
(9, 4, '2023-09-28', 'Venta', '2023-10-28', 30, 760.00, 91.20, 18.00, 'Tarjeta de crédito', 'B0909090909', 'Venta de artículos para el hogar'),
(10, 5, '2023-09-30', 'Venta', '2023-10-30', 30, 610.00, 73.20, 13.00, 'Efectivo', 'B1010101010', 'Venta de juguetes');


INSERT INTO detalleFactura (factura_id, producto_id, cantidad, precio_unitario, subtotal)
VALUES
(1, 1, 2, 25.00, 50.00),
(1, 3, 1, 100.00, 100.00),
(2, 2, 3, 40.00, 120.00),
(2, 4, 2, 60.00, 120.00),
(3, 5, 4, 15.00, 60.00),
(3, 1, 1, 30.00, 30.00),
(4, 3, 2, 50.00, 100.00),
(4, 2, 1, 70.00, 70.00),
(5, 4, 3, 20.00, 60.00),
(5, 5, 1, 50.00, 50.00);

INSERT INTO metodoPago (id_metodoPago, nombre_metodo)
VALUES
(1, 'Tarjeta de crédito'),
(2, 'Efectivo'),
(3, 'Tarjeta de crédito'),
(4, 'Efectivo'),
(5, 'Tarjeta de crédito'),
(6, 'Efectivo'),
(7, 'Tarjeta de crédito'),
(8, 'Efectivo'),
(9, 'Tarjeta de crédito'),
(10, 'Efectivo');
