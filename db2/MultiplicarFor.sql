CREATE DEFINER=`root`@`localhost` PROCEDURE `MultiplicarFor`(
    IN cantidad INT,
    IN numero2 INT
)
BEGIN
    DECLARE multiplicador INT;
    DECLARE resultado INT;
    
    -- Crear una tabla temporal para almacenar los resultados
    CREATE TEMPORARY TABLE IF NOT EXISTS TablaMultiplicar (
        Numero1 INT,
        Numero2 INT,
        Resultado INT
    );

    -- Iniciar el ciclo con un contador
    SET multiplicador = 1;

    loop_label: LOOP
        -- Calcular el resultado y agregarlo a la tabla temporal
        SET resultado = multiplicador * numero2;
        INSERT INTO TablaMultiplicar (Numero1, Numero2, Resultado) VALUES (multiplicador, numero2, resultado);
        
        -- Incrementar el contador
        SET multiplicador = multiplicador + 1;

        -- Salir del ciclo si se alcanza la cantidad deseada
        IF multiplicador > cantidad THEN
            LEAVE loop_label;
        END IF;
    END LOOP;

    -- Mostrar la tabla de multiplicar
    SELECT * FROM TablaMultiplicar;

    -- Eliminar la tabla temporal
    DROP TEMPORARY TABLE IF EXISTS TablaMultiplicar;
END