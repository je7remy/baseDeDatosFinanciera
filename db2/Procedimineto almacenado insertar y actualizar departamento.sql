CREATE DEFINER=`root`@`localhost` PROCEDURE `add_update_departamento`(
  in p_id_departamento int,
  in p_nombre_departamento varchar(50),
  in p_status_departamento varchar(1)
)
BEGIN
    DECLARE cantidad_filas INT;

    SELECT COUNT(*) INTO cantidad_filas FROM departamentos WHERE id_departamento = p_id_departamento;

    IF cantidad_filas > 0 THEN
        -- El departamento existe, realizamos la actualización
        UPDATE departamentos
        SET nombre_departamento = p_nombre_departamento,
            status_departamento = p_status_departamento,
            updated_at = CURRENT_TIMESTAMP
        WHERE id_departamento = p_id_departamento;
    ELSE
        -- El departamento no existe, realizamos la inserción
        INSERT INTO departamentos (
            nombre_departamento,
            status_departamento
        )
        VALUES (
            p_nombre_departamento,
            p_status_departamento
        );
    END IF;
END