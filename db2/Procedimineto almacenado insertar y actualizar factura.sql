CREATE DEFINER=`root`@`localhost` PROCEDURE `add_update_factura`(
  in p_idfactura int,
  in p_cliente_id int,
  in p_empleado_id int,
  in p_fecha_factura date,
  in p_tipo_factura enum('CREDITO','CONTADO'),
  in p_fecha_vence date,
  in p_dias_vecimeinto smallint,
  in p_total double,
  in p_itbis float,
  in p_desc_factura float,
  in p_forma_pago enum('EFECTIVO','TARJETA','CHEQUE','TRANSFERENCIA'),
  in p_ncf varchar(18),
  in p_descripcion varchar(200),
  in p_balance double,
  in p_status_factura varchar(1)
)
BEGIN
    DECLARE cantidad_filas INT;

    SELECT COUNT(*) INTO cantidad_filas FROM factura WHERE idfactura = p_idfactura;

    IF cantidad_filas > 0 THEN
        -- La factura existe, realizamos la actualización
        UPDATE factura
        SET cliente_id = p_cliente_id,
            empleado_id = p_empleado_id,
            fecha_factura = p_fecha_factura,
            tipo_factura = p_tipo_factura,
            fecha_vence = p_fecha_vence,
            dias_vecimeinto = p_dias_vecimeinto,
            Total = p_total,
            itbis = p_itbis,
            desc_factura = p_desc_factura,
            FormaPago = p_forma_pago,
            NCF = p_ncf,
            Descripcion = p_descripcion,
            Balance = p_balance,
            status_factura = p_status_factura,
            updated_at = CURRENT_TIMESTAMP
        WHERE idfactura = p_idfactura;
    ELSE
        -- La factura no existe, realizamos la inserción
        INSERT INTO factura (
            cliente_id,
            empleado_id,
            fecha_factura,
            tipo_factura,
            fecha_vence,
            dias_vecimeinto,
            Total,
            itbis,
            desc_factura,
            FormaPago,
            NCF,
            Descripcion,
            Balance,
            status_factura
        )
        VALUES (
            p_cliente_id,
            p_empleado_id,
            p_fecha_factura,
            p_tipo_factura,
            p_fecha_vence,
            p_dias_vecimeinto,
            p_total,
            p_itbis,
            p_desc_factura,
            p_forma_pago,
            p_ncf,
            p_descripcion,
            p_balance,
            p_status_factura
        );
    END IF;
END