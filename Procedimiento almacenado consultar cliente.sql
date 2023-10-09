CREATE DEFINER=`root`@`localhost` PROCEDURE `consultar_cliente`(IN cliente_id_param INT)
BEGIN
    SELECT *
    FROM cliente
    WHERE id_cliente = cliente_id_param;
END