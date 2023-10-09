CREATE DEFINER=`root`@`localhost` PROCEDURE `consultar_producto`(IN producto_id_param INT)
BEGIN
    SELECT *
    FROM producto
    WHERE id_producto = producto_id_param;
END