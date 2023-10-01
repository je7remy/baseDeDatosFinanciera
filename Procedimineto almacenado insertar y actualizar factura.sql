CREATE PROCEDURE add_update_factura(
    IN p_id_factura INT,
    IN p_cliente_id INT,
    IN p_empleado_id INT,
    IN p_fecha_factura DATE,
    IN p_tipo_factura VARCHAR(50),
    IN p_fecha_vence DATE,
    IN p_dias_vencimiento INT,
    IN p_total DECIMAL(15, 2),
    IN p_itbis DECIMAL(15, 2),
    IN p_desc_factura DECIMAL(15, 2),
    IN p_formaPago VARCHAR(50),
    IN p_ncf VARCHAR(50),
    IN p_descripcion TEXT
)
BEGIN
    DECLARE factura_count INT;

    -- Verificar si la factura con el ID proporcionado existe
    SELECT COUNT(*) INTO factura_count FROM factura WHERE id_factura = p_id_factura;

    IF factura_count > 0 THEN
        -- Actualizar la factura existente
        UPDATE factura
        SET
            cliente_id = p_cliente_id,
            empleado_id = p_empleado_id,
            fecha_factura = p_fecha_factura,
            tipo_factura = p_tipo_factura,
            fecha_vence = p_fecha_vence,
            dias_vencimiento = p_dias_vencimiento,
            total = p_total,
            itbis = p_itbis,
            desc_factura = p_desc_factura,
            formaPago = p_formaPago,
            ncf = p_ncf,
            descripcion = p_descripcion
        WHERE
            id_factura = p_id_factura;
    ELSE
        -- Insertar una nueva factura
        INSERT INTO factura (
            cliente_id,
            empleado_id,
            fecha_factura,
            tipo_factura,
            fecha_vence,
            dias_vencimiento,
            total,
            itbis,
            desc_factura,
            formaPago,
            ncf,
            descripcion
        )
        VALUES (
            p_cliente_id,
            p_empleado_id,
            p_fecha_factura,
            p_tipo_factura,
            p_fecha_vence,
            p_dias_vencimiento,
            p_total,
            p_itbis,
            p_desc_factura,
            p_formaPago,
            p_ncf,
            p_descripcion
        );
    END IF;
END;