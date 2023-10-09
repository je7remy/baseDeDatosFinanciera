CREATE DEFINER=`root`@`localhost` PROCEDURE `consultar_metodo_pago`(IN metodo_pago_id_param INT)
BEGIN
    SELECT *
    FROM metodoPago
    WHERE id_metodoPago = metodo_pago_id_param;
END