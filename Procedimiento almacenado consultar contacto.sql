CREATE DEFINER=`root`@`localhost` PROCEDURE `consultar_contacto`(IN contacto_id_param INT)
BEGIN
    SELECT *
    FROM contactos
    WHERE id_contactos = contacto_id_param;
END