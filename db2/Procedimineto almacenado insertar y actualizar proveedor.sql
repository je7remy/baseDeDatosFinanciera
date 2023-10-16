CREATE DEFINER=`root`@`localhost` PROCEDURE `add_update_proveedor`(
  in p_id_proveedore int,
  in p_nombre_proveedor varchar(50),
  in p_apellido_proveedor varchar(50),
  in p_direccion_proveedor varchar(200),
  in p_ced_rnc_proveedor varchar(11),
  in p_email_proveedor varchar(100),
  in p_pais_id int,
  in p_status_proveedor varchar(1)
)
BEGIN
    DECLARE cantidad_filas INT;

    SELECT COUNT(*) INTO cantidad_filas FROM proveedores WHERE id_proveedore = p_id_proveedore;

    IF cantidad_filas > 0 THEN
        -- El proveedor existe, realizamos la actualización
        UPDATE proveedores
        SET nombre_proveedor = p_nombre_proveedor,
            apellido_proveedor = p_apellido_proveedor,
            direccion_proveedor = p_direccion_proveedor,
            ced_rnc_proveedor = p_ced_rnc_proveedor,
            email_proveedor = p_email_proveedor,
            pais_id = p_pais_id,
            status_proveedor = p_status_proveedor,
            updated_at = CURRENT_TIMESTAMP
        WHERE id_proveedore = p_id_proveedore;
    ELSE
        -- El proveedor no existe, realizamos la inserción
        INSERT INTO proveedores (
            nombre_proveedor,
            apellido_proveedor,
            direccion_proveedor,
            ced_rnc_proveedor,
            email_proveedor,
            pais_id,
            status_proveedor
        )
        VALUES (
            p_nombre_proveedor,
            p_apellido_proveedor,
            p_direccion_proveedor,
            p_ced_rnc_proveedor,
            p_email_proveedor,
            p_pais_id,
            p_status_proveedor
        );
    END IF;
END