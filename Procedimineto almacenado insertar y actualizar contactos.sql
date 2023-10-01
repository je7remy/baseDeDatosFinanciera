CREATE DEFINER=`root`@`localhost` PROCEDURE `add_update_contactos`(
    IN p_id_contactos INT,
    IN p_id_entidad INT,
    IN p_tipo_entidad CHAR(1),
    IN p_tipo_contacto ENUM('CELULAR', 'FAX', 'CASA', 'TRABAJO'),
    IN p_numero VARCHAR(14)
)
BEGIN
    INSERT INTO contactos (id_contactos, id_entidad, tipo_entidad, tipo_contacto, Numero)
    VALUES (p_id_contactos, p_id_entidad, p_tipo_entidad, p_tipo_contacto, p_numero);
END