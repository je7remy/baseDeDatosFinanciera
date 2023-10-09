CREATE DEFINER=`root`@`localhost` PROCEDURE `consultar_departamento`(IN departamento_id_param INT)
BEGIN
    SELECT *
    FROM dptos
    WHERE id_dptos = departamento_id_param;
END