CREATE DEFINER=`root`@`localhost` PROCEDURE `MultiplicarDoWhile`(
    IN numero1 INT,
    IN numero2 INT
)
BEGIN
    DECLARE multiplicador INT DEFAULT 1;
    DECLARE resultado INT;

    -- Crear una tabla temporal para almacenar los resultados
    CREATE TEMPORARY TABLE IF NOT EXISTS TablaMultiplicar (
        Multiplicador INT,
        Resultado INT
    );

    -- Iniciar el ciclo while
    WHILE multiplicador <= numero2 DO
        -- Calcular el resultado y agregarlo a la tabla temporal
        SET resultado = numero1 * multiplicador;
        INSERT INTO TablaMultiplicar (Multiplicador, Resultado) VALUES (multiplicador, resultado);
        
        -- Incrementar el multiplicador
        SET multiplicador = multiplicador + 1;
    END WHILE;

    -- Mostrar la tabla de multiplicar
    SELECT * FROM TablaMultiplicar;

    -- Eliminar la tabla temporal
    DROP TEMPORARY TABLE IF EXISTS TablaMultiplicar;
END