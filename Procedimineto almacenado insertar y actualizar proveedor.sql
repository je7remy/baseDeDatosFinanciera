
CREATE PROCEDURE add_update_proveedor(
    IN p_id_proveedor INT,
    IN p_rnc_cedula VARCHAR(20),
    IN p_nombre_proveedor VARCHAR(255),
    IN p_contacto_proveedor VARCHAR(255),
    IN p_direccion_proveedor VARCHAR(255),
    IN p_pais_id INT,
    IN p_email_proveedor VARCHAR(255)
)
BEGIN
    DECLARE proveedor_count INT;

    -- Verificar si el proveedor con el ID proporcionado existe
    SELECT COUNT(*) INTO proveedor_count FROM proveedor WHERE id_proveedor = p_id_proveedor;

    IF proveedor_count > 0 THEN
        -- Actualizar el proveedor existente
        UPDATE proveedor
        SET
            rnc_cedula = p_rnc_cedula,
            nombre_proveedor = p_nombre_proveedor,
            contacto_proveedor = p_contacto_proveedor,
            direccion_proveedor = p_direccion_proveedor,
            pais_id = p_pais_id,
            email_proveedor = p_email_proveedor
        WHERE
            id_proveedor = p_id_proveedor;
    ELSE
        -- Insertar un nuevo proveedor
        INSERT INTO proveedor (
            rnc_cedula,
            nombre_proveedor,
            contacto_proveedor,
            direccion_proveedor,
            pais_id,
            email_proveedor
        )
        VALUES (
            p_rnc_cedula,
            p_nombre_proveedor,
            p_contacto_proveedor,
            p_direccion_proveedor,
            p_pais_id,
            p_email_proveedor
        );
    END IF;
END;
