CREATE DEFINER=`root`@`localhost` PROCEDURE `consultar_factura_detalle`(IN cliente_id_param INT)
BEGIN
    SELECT
        c.id_cliente AS IdCliente,
        CASE
            WHEN c.sexo_cliente = 'M' THEN 'Hombre'
            ELSE 'Mujer'
        END AS Sexo,
        c.direccion_cliente AS Direccion,
        f.id_factura AS Factura,
        f.total AS Monto,
        f.total - COALESCE(SUM(df.subtotal), 0) AS Balance,
        f.fecha_factura AS FechaFact,
        f.fecha_vence AS FechaVence,
        DATEDIFF(NOW(), f.fecha_vence) AS DiasVencidos
    FROM
        cliente c
    LEFT JOIN factura f ON c.id_cliente = f.cliente_id
    LEFT JOIN detalleFactura df ON f.id_factura = df.factura_id
    WHERE
        c.id_cliente = cliente_id_param
    GROUP BY
        c.id_cliente, Sexo, c.direccion_cliente, Factura, Monto, FechaFact, FechaVence, DiasVencidos;
END