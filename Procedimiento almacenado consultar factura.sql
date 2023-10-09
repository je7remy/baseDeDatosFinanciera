CREATE DEFINER=`root`@`localhost` PROCEDURE `consultar_factura`(IN factura_id_param INT)
BEGIN
    SELECT *
    FROM factura
    WHERE id_factura = factura_id_param;
END