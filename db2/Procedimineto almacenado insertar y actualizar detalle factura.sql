CREATE DEFINER=`root`@`localhost` PROCEDURE `add_update_detalle_fact`(
  in p_iddetalle int,
  in p_factura_id int,
  in p_producto_id int,
  in p_descripcion varchar(50),
  in p_cantidad float,
  in p_precio float,
  in p_descuento float,
  in p_itbis float
)
BEGIN
    DECLARE cantidad_filas INT;

    SELECT COUNT(*) INTO cantidad_filas FROM detalle_fact WHERE iddetalle = p_iddetalle;

    IF cantidad_filas > 0 THEN
        -- El detalle existe, realizamos la actualización
        UPDATE detalle_fact
        SET factura_id = p_factura_id,
            producto_id = p_producto_id,
            descripcion = p_descripcion,
            cantidad = p_cantidad,
            precio = p_precio,
            descuento = p_descuento,
            itbis = p_itbis
        WHERE iddetalle = p_iddetalle;
    ELSE
        -- El detalle no existe, realizamos la inserción
        INSERT INTO detalle_fact (
            factura_id,
            producto_id,
            descripcion,
            cantidad,
            precio,
            descuento,
            itbis
        )
        VALUES (
            p_factura_id,
            p_producto_id,
            p_descripcion,
            p_cantidad,
            p_precio,
            p_descuento,
            p_itbis
        );
    END IF;
END