CREATE DEFINER=`root`@`localhost` PROCEDURE `consultar_empleado`(IN empleado_id_param INT)
BEGIN
    SELECT *
    FROM empleado
    WHERE id_empleado = empleado_id_param;
END