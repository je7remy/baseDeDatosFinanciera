CREATE DEFINER=`root`@`localhost` PROCEDURE `add_update_empleado`(
  in p_id_empleado int,
  in p_nombre_empleado varchar(50),
  in p_apellido_empleado varchar(50),
  in p_direccion_empleado varchar(200),
  in p_cedula_empleado varchar(11),
  in p_sexo_empleado varchar(1),
  in p_email_empleado varchar(100),
  in p_salary_empleado float,
  in p_departamento_id int,
  in p_status_empleado varchar(1)
)
BEGIN
    DECLARE cantidad_filas INT;

    SELECT COUNT(*) INTO cantidad_filas FROM empleados WHERE id_empleado = p_id_empleado;

    IF cantidad_filas > 0 THEN
        -- El empleado existe, realizamos la actualización
        UPDATE empleados
        SET nombre_empleado = p_nombre_empleado,
            apellido_empleado = p_apellido_empleado,
            direccion_empleado = p_direccion_empleado,
            cedula_empleado = p_cedula_empleado,
            sexo_empleado = p_sexo_empleado,
            email_empleado = p_email_empleado,
            salary_empleado = p_salary_empleado,
            departamento_id = p_departamento_id,
            status_empleado = p_status_empleado,
            updated_at = CURRENT_TIMESTAMP
        WHERE id_empleado = p_id_empleado;
    ELSE
        -- El empleado no existe, realizamos la inserción
        INSERT INTO empleados (
            nombre_empleado,
            apellido_empleado,
            direccion_empleado,
            cedula_empleado,
            sexo_empleado,
            email_empleado,
            salary_empleado,
            departamento_id,
            status_empleado
        )
        VALUES (
            p_nombre_empleado,
            p_apellido_empleado,
            p_direccion_empleado,
            p_cedula_empleado,
            p_sexo_empleado,
            p_email_empleado,
            p_salary_empleado,
            p_departamento_id,
            p_status_empleado
        );
    END IF;
END