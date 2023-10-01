CREATE PROCEDURE add_update_producto(
    IN p_id_producto INT,
    IN p_nombre_producto VARCHAR(255),
    IN p_descripcion_producto VARCHAR(255),
    IN p_tipo_producto VARCHAR(255),
    IN p_costo_producto DECIMAL(15, 2),
    IN p_precioVenta_producto DECIMAL(15, 2),
    IN p_stock_producto INT,
    IN p_cbarra_producto VARCHAR(255),
    IN p_proveedor_id INT
)
BEGIN
    DECLARE producto_count INT;

    -- Verificar si el producto con el ID proporcionado existe
    SELECT COUNT(*) INTO producto_count FROM producto WHERE id_producto = p_id_producto;

    IF producto_count > 0 THEN
        -- Actualizar el producto existente
        UPDATE producto
        SET
            nombre_producto = p_nombre_producto,
            desripcion_producto = p_descripcion_producto,
            tipo_producto = p_tipo_producto,
            costo_producto = p_costo_producto,
            precioVenta_producto = p_precioVenta_producto,
            stock_producto = p_stock_producto,
            cbarra_producto = p_cbarra_producto,
            proveedor_id = p_proveedor_id
        WHERE
            id_producto = p_id_producto;
    ELSE
        -- Insertar un nuevo producto
        INSERT INTO producto (
            nombre_producto,
            desripcion_producto,
            tipo_producto,
            costo_producto,
            precioVenta_producto,
            stock_producto,
            cbarra_producto,
            proveedor_id
        )
        VALUES (
            p_nombre_producto,
            p_descripcion_producto,
            p_tipo_producto,
            p_costo_producto,
            p_precioVenta_producto,
            p_stock_producto,
            p_cbarra_producto,
            p_proveedor_id
        );
    END IF;
END;
