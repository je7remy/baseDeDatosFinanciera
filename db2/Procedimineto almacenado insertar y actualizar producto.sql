CREATE DEFINER=`root`@`localhost` PROCEDURE `add_update_producto`(
  in p_id_producto int,
  in p_nombre_producto varchar(50),
  in p_descripcion_producto varchar(100),
  in p_costo_producto float,
  in p_precioVenta_producto float,
  in p_stock_producto int,
  in p_cbarra_producto varchar(13),
  in p_proveedor_id int,
  in p_status_producto varchar(1)
)
BEGIN
    DECLARE cantidad_filas INT;

    SELECT COUNT(*) INTO cantidad_filas FROM productos WHERE id_producto = p_id_producto;

    IF cantidad_filas > 0 THEN
        -- El producto existe, realizamos la actualización
        UPDATE productos
        SET nombre_producto = p_nombre_producto,
            desripcion_producto = p_descripcion_producto,
            costo_producto = p_costo_producto,
            precioVenta_producto = p_precioVenta_producto,
            stock_producto = p_stock_producto,
            cbarra_producto = p_cbarra_producto,
            proveedor_id = p_proveedor_id,
            status_producto = p_status_producto,
            updated_at = CURRENT_TIMESTAMP
        WHERE id_producto = p_id_producto;
    ELSE
        -- El producto no existe, realizamos la inserción
        INSERT INTO productos (
            nombre_producto,
            desripcion_producto,
            costo_producto,
            precioVenta_producto,
            stock_producto,
            cbarra_producto,
            proveedor_id,
            status_producto
        )
        VALUES (
            p_nombre_producto,
            p_descripcion_producto,
            p_costo_producto,
            p_precioVenta_producto,
            p_stock_producto,
            p_cbarra_producto,
            p_proveedor_id,
            p_status_producto
        );
    END IF;
END