CREATE DEFINER=`root`@`localhost` PROCEDURE `add_update_cliente`(
    in p_id_cliente int,
    in p_nombre_cliente varchar(50),
    in p_apellido_cliente varchar(50),
    in p_direccion_cliente varchar(200),
    in p_cedula_cliente varchar(11),
    in p_sexo_cliente varchar(1),
    in p_email_cliente varchar(100),
    in p_limitCred_cliente float,
    in p_pais_id int)
BEGIN
    DECLARE cantidad_filas INT;

    SELECT COUNT(*) INTO cantidad_filas FROM clientes WHERE id_cliente = p_id_cliente;

    IF cantidad_filas > 0 THEN
        UPDATE clientes
        SET nombre_cliente = p_nombre_cliente,
            apellido_cliente = p_apellido_cliente,
            direccion_cliente = p_direccion_cliente,
            cedula_cliente = p_cedula_cliente,
            sexo_cliente = p_sexo_cliente,
            email_cliente = p_email_cliente,
            limitCred_cliente = p_limitCred_cliente,
            pais_id = p_pais_id
        WHERE id_cliente = p_id_cliente;
    ELSE
        INSERT INTO clientes (
            nombre_cliente,
            apellido_cliente,
            cedula_cliente,
            direccion_cliente,
            pais_id,
            sexo_cliente,
            email_cliente,
            limitCred_cliente
        )
        VALUES (
            p_nombre_cliente,
            p_apellido_cliente,
            p_cedula_cliente,
            p_direccion_cliente,
            p_pais_id,
            p_sexo_cliente,
            p_email_cliente,
            p_limitCred_cliente
        );
    END IF;
END