CREATE PROCEDURE add_update_empleado(
    IN p_id_empleado INT,
    IN p_nombre_empleado VARCHAR(255),
    IN p_apellido_empleado VARCHAR(255),
    IN p_fecha_nac DATE,
    IN p_fecha_contratacion DATE,
    IN p_direccion_empleado VARCHAR(255),
    IN p_cedula_empleado VARCHAR(20),
    IN p_dpto_id INT,
    IN p_sexo_empleado CHAR(1),
    IN p_email_empleado VARCHAR(255),
    IN p_salario_empleado DECIMAL(15, 2)
)
BEGIN
    DECLARE empleado_count INT;

    -- Verificar si el empleado con el ID proporcionado existe
    SELECT COUNT(*) INTO empleado_count FROM empleado WHERE id_empleado = p_id_empleado;

    IF empleado_count > 0 THEN
        -- Actualizar el empleado existente
        UPDATE empleado
        SET
            nombre_empleado = p_nombre_empleado,
            apellido_empleado = p_apellido_empleado,
            fecha_nac = p_fecha_nac,
            fecha_contratacion = p_fecha_contratacion,
            direccion_empleado = p_direccion_empleado,
            cedula_empleado = p_cedula_empleado,
            dpto_id = p_dpto_id,
            sexo_empleado = p_sexo_empleado,
            email_empleado = p_email_empleado,
            salario_empleado = p_salario_empleado
        WHERE
            id_empleado = p_id_empleado;
    ELSE
        -- Insertar un nuevo empleado
        INSERT INTO empleado (
            nombre_empleado,
            apellido_empleado,
            fecha_nac,
            fecha_contratacion,
            direccion_empleado,
            cedula_empleado,
            dpto_id,
            sexo_empleado,
            email_empleado,
            salario_empleado
        )
        VALUES (
            p_nombre_empleado,
            p_apellido_empleado,
            p_fecha_nac,
            p_fecha_contratacion,
            p_direccion_empleado,
            p_cedula_empleado,
            p_dpto_id,
            p_sexo_empleado,
            p_email_empleado,
            p_salario_empleado
        );
    END IF;
END;