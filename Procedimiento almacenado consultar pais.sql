CREATE DEFINER=`root`@`localhost` PROCEDURE `consultar_pais`(IN pais_id_param INT)
BEGIN
    SELECT *
    FROM pais
    WHERE id_pais = pais_id_param;
END