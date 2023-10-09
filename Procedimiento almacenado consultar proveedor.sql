CREATE DEFINER=`root`@`localhost` PROCEDURE `consultar_proveedor`(IN proveedor_id_param INT)
BEGIN
    SELECT *
    FROM proveedor
    WHERE id_proveedor = proveedor_id_param;
END