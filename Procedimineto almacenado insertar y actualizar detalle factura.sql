CREATE PROCEDURE add_update_detalleFactura(
    IN p_id_detalleFactura INT,
    IN p_factura_id INT,
    IN p_producto_id INT,
    IN p_cantidad INT,
    IN p_precio_unitario DECIMAL(15, 2),
    IN p_subtotal DECIMAL(15, 2)
)
BEGIN
    DECLARE detalleFactura_count INT;

    -- Verificar si el detalle de factura con el ID proporcionado existe
    SELECT COUNT(*) INTO detalleFactura_count FROM detalleFactura WHERE id_detalleFactura = p_id_detalleFactura;

    IF detalleFactura_count > 0 THEN
        -- Actualizar el detalle de factura existente
        UPDATE detalleFactura
        SET
            factura_id = p_factura_id,
            producto_id = p_producto_id,
            cantidad = p_cantidad,
            precio_unitario = p_precio_unitario,
            subtotal = p_subtotal
        WHERE
            id_detalleFactura = p_id_detalleFactura;
    ELSE
        -- Insertar un nuevo detalle de factura
        INSERT INTO detalleFactura (
            factura_id,
            producto_id,
            cantidad,
            precio_unitario,
            subtotal
        )
        VALUES (
            p_factura_id,
            p_producto_id,
            p_cantidad,
            p_precio_unitario,
            p_subtotal
        );
    END IF;
END;