CREATE DEFINER=`root`@`localhost` PROCEDURE `add_update_departamento`(
    IN p_id_dptos INT,
    IN p_nombre_dptos VARCHAR(255),
    IN p_estatus_dptos VARCHAR(50)
)
BEGIN
    DECLARE dptos_count INT;

    -- Verificar si el departamento con el ID proporcionado existe
    SELECT COUNT(*) INTO dptos_count FROM dptos WHERE id_dptos = p_id_dptos;

    IF dptos_count > 0 THEN
        -- Actualizar el departamento existente
        UPDATE dptos
        SET
            nombre_dptos = p_nombre_dptos,
            estatus_dptos = p_estatus_dptos
        WHERE
            id_dptos = p_id_dptos;
    ELSE
        -- Insertar un nuevo departamento
        INSERT INTO dptos (nombre_dptos, estatus_dptos)
        VALUES (p_nombre_dptos, p_estatus_dptos);
    END IF;
END