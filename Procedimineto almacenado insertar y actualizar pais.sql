CREATE PROCEDURE add_update_pais(
    IN p_id_pais INT,
    IN p_nombre_pais VARCHAR(255),
    IN p_codigo_pais VARCHAR(10),
    IN p_status_dptos VARCHAR(50)
)
BEGIN
    DECLARE pais_count INT;

    -- Verificar si el país con el ID proporcionado existe
    SELECT COUNT(*) INTO pais_count FROM pais WHERE id_pais = p_id_pais;

    IF pais_count > 0 THEN
        -- Actualizar el país existente
        UPDATE pais
        SET
            nombre_pais = p_nombre_pais,
            codigo_pais = p_codigo_pais,
            status_dptos = p_status_dptos
        WHERE
            id_pais = p_id_pais;
    ELSE
        -- Insertar un nuevo país
        INSERT INTO pais (nombre_pais, codigo_pais, status_dptos)
        VALUES (p_nombre_pais, p_codigo_pais, p_status_dptos);
    END IF;
END;

