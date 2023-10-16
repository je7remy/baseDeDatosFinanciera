CREATE DEFINER=`root`@`localhost` PROCEDURE `add_insert_update_pais`(
  in p_id_pais int,
  in p_nombre_pais varchar(50),
  in p_status_pais varchar(1)
)
BEGIN
    DECLARE cantidad_filas INT;

    SELECT COUNT(*) INTO cantidad_filas FROM pais WHERE id_pais = p_id_pais;

    IF cantidad_filas > 0 THEN
        -- El país existe, realizamos la actualización
        UPDATE pais
        SET nombre_pais = p_nombre_pais,
            status_pais = p_status_pais,
            updated_at = CURRENT_TIMESTAMP
        WHERE id_pais = p_id_pais;
    ELSE
        -- El país no existe, realizamos la inserción
        INSERT INTO pais (
            nombre_pais,
            status_pais
        )
        VALUES (
            p_nombre_pais,
            p_status_pais
        );
    END IF;
END