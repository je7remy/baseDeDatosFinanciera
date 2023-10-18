CREATE DEFINER=`root`@`localhost` PROCEDURE `MultiplicarRepeat`(
    IN numero1 INT,
    IN numero2 INT
)
BEGIN
    DECLARE multiplicador INT;
    DECLARE resultado INT;
    
    -- Inicializar el multiplicador
    SET multiplicador = 1;

    -- Crear una tabla temporal para almacenar los resultados
    CREATE TEMPORARY TABLE IF NOT EXISTS TablaMultiplicar (
        Multiplicador INT,
        Resultado INT
    );

    REPEAT
        -- Calcular el resultado y agregarlo a la tabla temporal
        SET resultado = numero1 * multiplicador;
        INSERT INTO TablaMultiplicar (Multiplicador, Resultado) VALUES (multiplicador, resultado);
        
        -- Incrementar el multiplicador
        SET multiplicador = multiplicador + 1;
    UNTIL multiplicador > numero2 END REPEAT;

    -- Mostrar la tabla de multiplicar
    SELECT * FROM TablaMultiplicar;

    -- Eliminar la tabla temporal
    DROP TEMPORARY TABLE IF EXISTS TablaMultiplicar;
END