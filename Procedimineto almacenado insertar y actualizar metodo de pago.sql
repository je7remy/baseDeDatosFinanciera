CREATE DEFINER=`root`@`localhost` PROCEDURE `add_update_metodoPago`(
    IN p_id_metodoPago INT,
    IN p_nombre_metodo VARCHAR(255)
)
BEGIN
    DECLARE metodoPago_count INT;

    -- Verificar si el método de pago con el ID proporcionado existe
    SELECT COUNT(*) INTO metodoPago_count FROM metodoPago WHERE id_metodoPago = p_id_metodoPago;

    IF metodoPago_count > 0 THEN
        -- Actualizar el método de pago existente
        UPDATE metodoPago
        SET
            nombre_metodo = p_nombre_metodo
        WHERE
            id_metodoPago = p_id_metodoPago;
    ELSE
        -- Insertar un nuevo método de pago
        INSERT INTO metodoPago (
            nombre_metodo
        )
        VALUES (
            p_nombre_metodo
        );
    END IF;
END